import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/tiktok_chat_view.dart';

class TiktokChatController extends State<TiktokChatView> {
  static late TiktokChatController instance;
  late TiktokChatView view;

  late Timer timer;
  @override
  void initState() {
    instance = this;
    timer = Timer.periodic(Duration(milliseconds: 500), (timer) {
      getChats();
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List users = [];
  List chats = [];
  String content = "";
  String oldContent = "";
  ScrollController scrollController = ScrollController();

  getChats() async {
    var chatFile = File(
      r"C:\Users\denyo\Documents\FLUTTER_PROJECT\TikTok-Live-Connector\chat.txt",
    );
    content = chatFile.readAsStringSync();
    // if (content == oldContent && oldContent.isNotEmpty) {
    //   return;
    // }
    // oldContent = content;

    users.clear();
    chats.clear();

    var userChats = content.split("\n");
    for (var chat in userChats) {
      String name = "";
      String message = "";
      if (chat.trim().endsWith(":")) {
        name = chat;
        name = name.replaceAll("------", "");
        users.add(name);
      } else {
        message = chat;
        message = message.replaceAll("------", "");
        chats.add(message);
      }
    }

    setState(() {});

    await Future.delayed(Duration(milliseconds: 250));
    scrollToBottom();
  }

  scrollToBottom() {
    scrollController.jumpTo(scrollController.position.maxScrollExtent);
  }

  scrollToTop() {
    scrollController.jumpTo(0);
  }

  String getAutoReply(String message) {
    var m = message.toLowerCase();
    if (m.contains("rekomendasi") ||
        m.contains("belajar") ||
        m.contains("join")) {
      return "Buka aja capekngoding.com ya!";
    }
    if (m.contains("cepet") ||
        m.contains("cepat") ||
        m.contains("extension") ||
        m.contains("ngebut")) {
      return "Saya menggunakan extension: Ngebut di VsCode yaa! Cek bio ada cara installnya!";
    }
    if (m.contains("joki")) {
      return "GAK BANG, AMPUN!";
    }
    if (m.contains("spek") || m.contains("spec") || m.contains("laptop")) {
      return "HP 15 | AMD RYZEN 5 5500U | 512GB SSD | 8GB RAM | 7-8jtan doang";
    }
    if (m.contains("kelas") || m.contains("les")) {
      return "Buka capekngoding.com aja bro";
    }
    if (m.contains("asal") || m.contains("dimana") || m.contains("tinggal")) {
      return "Bogor brother!";
    }
    if (m.contains("dari mana") ||
        m.contains("dari mana") ||
        m.contains("mulai")) {
      return "Belajar basic pemrograman dulu: Variable, IF, List, Map, Looping, Function, OOP";
    }

    if (m.contains("komenan") || m.contains("tiktok") || m.contains("bot")) {
      return "Saya pake Tiktok Live Connector, cari di GitHub yaa!";
    }
    return "";
  }
}
