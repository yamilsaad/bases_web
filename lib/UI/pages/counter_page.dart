import 'package:flutter/material.dart';

import '../shared/shared.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  get color => Colors.indigo;

  @override
  Widget build(BuildContext context) {
    int counter = 10;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),
          Spacer(), //El Spacer nos ayuda esparcir el spacio lo maximo posible, en este caso el del Column.
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Counter: $counter',
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                  text: 'Incrementar',
                  color: color,
                  onPressed: () => setState(() => counter++)),
              CustomFlatButton(
                  text: 'Decresente',
                  color: color,
                  onPressed: () => setState(() => counter--)),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
