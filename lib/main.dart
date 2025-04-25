import 'package:flutter/material.dart';
import 'package:statemanegmentapp/page1.dart';
import 'package:statemanegmentapp/page2.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('سلة المشتريات'),
        ),
        body: Container(
          child: Column(
            children: [
              Center(
                child: Text(
                  counter.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Center(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        var value = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Page1(
                                counter: counter,
                                callback: (value) {
                                  setState(() {
                                    counter = value;
                                  });
                                },
                              ), // Changed from page1 to Page1
                            ));
                        if (value != null) {
                          setState(() {
                            counter = value;
                          });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                        child: Text(
                          'الصفحة 1',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        onTap: () async {
                          var value = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => page2(
                                  counter: counter,
                                  callback: (value) {
                                    setState(() {
                                      counter = value;
                                    });
                                  },
                                ),
                              ));
                          if (value != null) {
                            setState(() {
                              counter = value;
                            });
                          }
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child: Text(
                              'الصفحة 2',
                              style: Theme.of(context).textTheme.headlineMedium,
                            )))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
