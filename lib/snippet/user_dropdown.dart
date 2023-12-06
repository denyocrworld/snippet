//#TEMPLATE reuseable_user_dropdown_controller
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';

class QUserDropdownController extends State<QUserDropdown> {
  static late QUserDropdownController instance;
  late QUserDropdown view;

  @override
  void initState() {
    instance = this;
    getUsers();
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
}

class QUserDropdown extends StatefulWidget {
  final Function(dynamic value, String? label) onChanged;
  const QUserDropdown({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  Widget build(context, QUserDropdownController controller) {
    controller.view = this;
    if (controller.userDropdownValues.isEmpty) return Container();
    return QDropdownField(
      label: "Users",
      validator: Validator.required,
      items: controller.userDropdownValues,
      onChanged: (value, label) {
        print("value: $value");
        print("label: $label");
        onChanged(value, label);
      },
    )
        .animate()
        .move(
          duration: 1000.ms,
        )
        .fadeIn(
          duration: 1500.ms,
        );
  }

  @override
  State<QUserDropdown> createState() => QUserDropdownController();
}

//#END
