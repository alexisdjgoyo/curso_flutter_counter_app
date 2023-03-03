import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 4.0,
      ),
      // backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero de clicks', style: fontSize30),
              Text('$counter', style: fontSize30)
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: () => setState(() => counter++),
          ),
          // const SizedBox(
          //   width: 20,
          // ),
          FloatingActionButton(
            child: const Icon(Icons.restart_alt_outlined),
            onPressed: () => setState(() => counter = 0),
          ),
          // const SizedBox(
          //   width: 20,
          // ),
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1),
            onPressed: () => setState(() => counter--),
          ),
        ],
      ),
    );
  }
}
