import 'package:flutter/material.dart';
import 'package:statemanegmentapp/inheritedModel/my_inherited_model.dart';
import 'package:statemanegmentapp/inheritedWidget/context_provider.dart';

class MyButtonForInheritedModel extends StatelessWidget {
  const MyButtonForInheritedModel({super.key});

  @override
  Widget build(BuildContext context) {
    print('Button widget builds for inherited model example');
    return ElevatedButton(
      onPressed: () {
        InheritedModel.inheritFrom<MyInheritedModel>(context,
                aspect: "not_text")!
            .data
            .incrementCounter();
      },
      child: Text('Add'),
    );
  }
}
