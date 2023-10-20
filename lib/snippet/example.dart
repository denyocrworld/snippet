import 'package:dio/dio.dart';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ExampleAsync extends StatefulWidget {
  const ExampleAsync({Key? key}) : super(key: key);

  @override
  State<ExampleAsync> createState() => _ExampleAsyncState();
}

class _ExampleAsyncState extends State<ExampleAsync> {
  List users = [];
  bool loading = false;

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    loading = true;
    setState(() {});

    users = await getUsers();

    loading = false;
    setState(() {});
  }

  getUsers() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
