import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page2 extends StatefulWidget {
  final int counter;
  final Function(int) callback;
  const page2({super.key, required this.counter, required this.callback});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  late int Int_counter;
  @override
  void initState() {
    Int_counter = widget.counter;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Text(
            Int_counter.toString(),
            style: const TextStyle(fontSize: 20),
          ),
          ElevatedButton(
            onPressed: () {
              print("pressed");
              setState(() {
                Int_counter++;
                widget.callback(Int_counter);
              });
            },
            child: const Text('Back'),
          )
        ],
      ),
    );
  }
}
