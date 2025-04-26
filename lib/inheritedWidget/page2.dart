import 'package:flutter/material.dart';
import 'package:statemanegmentapp/inheritedWidget/context_provider.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Button widget builds');
    return ElevatedButton(
      onPressed: () {
        MyCounterUpdate.of(context).incrementCounter();
      },
      child: Text('Add'),
    );
  }
}
