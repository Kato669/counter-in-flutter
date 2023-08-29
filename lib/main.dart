import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  // int counter;
  double count;
  HomePage({super.key, this.count = 0});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(31, 207, 199, 199),
          appBar: AppBar(
            title: const Text('Counter'),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                widget.count += 1;
              });
            },
            child: const Icon(Icons.add),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Counter: ${widget.count}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 23.3,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
