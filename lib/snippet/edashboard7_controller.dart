import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/edashboard7_view.dart';

class Edashboard7Controller extends State<Edashboard7View> {
  static late Edashboard7Controller instance;
  late Edashboard7View view;

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
