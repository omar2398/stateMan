import 'package:flutter/material.dart';
import 'package:statemanegmentapp/inheritedWidget/page1.dart';
import 'package:statemanegmentapp/inheritedWidget/page2.dart';
import 'package:statemanegmentapp/inheritedWidget/context_provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cart Demo',
      home: MyHomePage(
        title: "stateManApp",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: MyCounterUpdate(
        title: 'hello',
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Counter value:'),
              MyTextWidget(),
              MyButton(),
            ],
          ),
        ),
      ),
    );
  }
}
