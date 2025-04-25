import 'package:flutter/material.dart';
import 'package:statemanegmentapp/context_provider.dart';

class MyInheritedWidget extends InheritedWidget {
  final MyCounterUpdateState data;
  final MyCounterUpdateState counter;
  MyInheritedWidget({
    required super.child,
    required this.counter,
    required this.data
  })
  

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    throw UnimplementedError();
  }}