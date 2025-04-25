import 'package:flutter/material.dart';
import 'package:statemanegmentapp/inheritedWidget/context_provider.dart';

class MyInheritedWidget extends InheritedWidget {
  final MyCounterUpdateState data;
  MyInheritedWidget({
    required super.child,
    required this.data
  })
  

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    throw UnimplementedError();
  }}