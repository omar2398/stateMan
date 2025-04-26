import 'package:flutter/material.dart';
import 'package:statemanegmentapp/inheritedWidget/inherited_widget.dart';

class MyCounterUpdate extends StatefulWidget {
  final Widget child;
  const MyCounterUpdate({super.key, required this.title, required this.child});
  final String title;

  static MyCounterUpdateState of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()?.data;
    return result!;
  }

  @override
  MyCounterUpdateState createState() => MyCounterUpdateState();
}

class MyCounterUpdateState extends State<MyCounterUpdate> {
  int _counter = 0;
  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int get counterValue => _counter;

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(data: this, child: widget.child);
  }
}
