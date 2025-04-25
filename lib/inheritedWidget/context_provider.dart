import 'package:flutter/material.dart';
import 'package:statemanegmentapp/inheritedWidget/inherited_widget.dart';

class MyCounterUpdate extends StatefulWidget {
  const MyCounterUpdate({super.key, required this.title});
  final String title;

  static MyCounterUpdateState of(BuildContext context) {
    final MyCounterUpdateState? result =
        context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()?.data;
    assert(result != null, 'No MyInheritedWidget found in context');
    return result!;
  }

  @override
  MyCounterUpdateState createState() => MyCounterUpdateState();
}

class MyCounterUpdateState extends State<MyCounterUpdate> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
