import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({
    super.key,
    this.initialCount = 0,
  });

  final int initialCount;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();

    _counter = widget.initialCount;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 16,
      children: <Widget>[
        Text('$_counter'),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
        ),
      ],
    );
  }
}
