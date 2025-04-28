import 'package:flutter/material.dart';
import 'package:statemanegmentapp/inheritedModel/context_provider.dart';

class MyInheritedModel extends InheritedModel<String> {
  final MyCounterUpdateInheritedModelState data;
  const MyInheritedModel({super.key, required super.child, required this.data});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return child != oldWidget;
  }

  @override
  bool updateShouldNotifyDependent(
      covariant InheritedModel<String> oldWidget, Set<String> dependencies) {
    if (dependencies.contains("text")) {
      return true;
    } else {
      return false;
    }
  }
}
