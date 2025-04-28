import 'package:flutter/material.dart';
import 'package:statemanegmentapp/inheritedModel/my_inherited_model.dart';
import 'package:statemanegmentapp/inheritedWidget/context_provider.dart';

class MyTextWidgetForInheritedModel extends StatelessWidget {
  const MyTextWidgetForInheritedModel({super.key});

  @override
  Widget build(BuildContext context) {
    print('Text widget builds for inherited model example');
    return Text(
      InheritedModel.inheritFrom<MyInheritedModel>(context, aspect: "text")!
          .data
          .counterValue
          .toString(),
    );
  }
}
