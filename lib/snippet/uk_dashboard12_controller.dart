
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/uk_dashboard12_view.dart';

class UkDashboard12Controller extends State<UkDashboard12View> {
    static late UkDashboard12Controller instance;
    late UkDashboard12View view;

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
        
    