import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/edashboard8_view.dart';

class Edashboard8Controller extends State<Edashboard8View> {
  static late Edashboard8Controller instance;
  late Edashboard8View view;

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
