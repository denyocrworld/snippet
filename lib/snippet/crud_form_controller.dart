import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/template/crud_service/crud_service.dart';

class CrudFormController extends State<CrudFormView> {
  static late CrudFormController instance;
  late CrudFormView view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
      productName = widget.item!["product_name"];
      price = widget.item!["price"];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool get isEditMode => widget.item != null;

  String? productName;
  num? price;

  doSave() async {
    bool isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }

    if (isEditMode) {
      await update();
    } else {
      await create();
    }

    Get.back();
  }

  create() async {
    await CrudService().create(
      productName: productName!,
      price: price!,
    );
  }

  update() async {
    await CrudService().update(
      id: widget.item!["id"],
      productName: productName!,
      price: price!,
    );
  }
}
