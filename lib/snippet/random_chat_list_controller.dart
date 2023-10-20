
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/random_chat_list_view.dart';

class RandomChatListController extends State<RandomChatListView> {
    static late RandomChatListController instance;
    late RandomChatListView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    