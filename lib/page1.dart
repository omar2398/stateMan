import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Change from 'page1' to 'Page1'
class Page1 extends StatefulWidget {
  final int counter;
  final Function(int) callback;
  const Page1({super.key, required this.counter, required this.callback});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
            Navigator.of(context).pop(Int_counter);
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
