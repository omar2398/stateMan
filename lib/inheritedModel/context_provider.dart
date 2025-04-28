import 'package:flutter/material.dart';
import 'package:statemanegmentapp/inheritedModel/my_inherited_model.dart';

class MyCounterUpdateInheritedModel extends StatefulWidget {
  final Widget child;
  const MyCounterUpdateInheritedModel({super.key, required this.child});

  State<MyCounterUpdateInheritedModel> createState() =>
      MyCounterUpdateInheritedModelState();

  static MyCounterUpdateInheritedModelState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedModel>()!.data;
  }
}

class MyCounterUpdateInheritedModelState
    extends State<MyCounterUpdateInheritedModel> {
  int _counter = 0;
  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int get counterValue => _counter;

  @override
  Widget build(BuildContext context) {
    return MyInheritedModel(
      data: this,
      child: widget.child,
    );
  }
}
