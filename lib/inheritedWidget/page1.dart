import 'package:flutter/material.dart';
import 'package:statemanegmentapp/inheritedWidget/context_provider.dart';

class MyTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Text widget builds');
    return Text(
      MyCounterUpdate.of(context).counterValue.toString(),
    );
  }
}