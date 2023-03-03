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
      floatingActionButton: const CustomFloatingActions(),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  const CustomFloatingActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.exposure_plus_1_outlined),
        ),
        // const SizedBox(
        //   width: 20,
        // ),
        FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.restart_alt_outlined),
        ),
        // const SizedBox(
        //   width: 20,
        // ),
        FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.exposure_minus_1),
        ),
      ],
    );
  }
}
