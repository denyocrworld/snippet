import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class LatihanRemoteDatasourceController
    extends State<LatihanRemoteDatasourceView> {
  static late LatihanRemoteDatasourceController instance;
  late LatihanRemoteDatasourceView view;

  @override
  void initState() {
    instance = this;
    getUsers();
    getCustomers();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> userDropdownValues = [];
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
    List users = obj["data"];
    for (var item in users) {
      userDropdownValues.add({
        "label": item["first_name"],
        "value": item["id"],
      });
    }
    setState(() {});
  }

  List<Map<String, dynamic>> customerDropdownValues = [];
  getCustomers() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    List users = obj["data"];
    for (var item in users) {
      customerDropdownValues.add({
        "label": item["first_name"],
        "value": item["id"],
      });
    }
    setState(() {});
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  doSave() async {
    bool isValid = formKey.currentState!.validate();
    if (isValid) {
      return;
    }
  }

  List<Map<String, dynamic>> provinces = [];
  getProvinceList(String country) async {
    //http request dengan router parameter/query parameter country
    provinces = await CountryService().getProvinces(country);
    setState(() {});
  }
}

class CountryService {
  getProvinces(String city) async {
    if (city == "Indonesia") {
      return [
        {
          "label": "Jawa Barat",
          "value": "Jawa Barat",
        },
        {
          "label": "Jawa Timur",
          "value": "Jawa Timur",
        }
      ];
    } else if (city == "Jerman") {
      return [
        {
          "label": "Berlin",
          "value": "Berlin",
        },
        {
          "label": "Stockholm",
          "value": "Stockholm",
        }
      ];
    }
  }
}
