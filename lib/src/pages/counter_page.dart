import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _styleText = new TextStyle(fontSize: 25);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Stateful Widget'), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Number of taps:',
                style: _styleText,
              ),
              Text('$_counter', style: _styleText)
            ],
          ),
        ),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
          child: Icon(Icons.autorenew),
          onPressed: () {
            setState(() {
              _counter = 0;
            });
          },
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {
            setState(() {
              _counter--;
              if (_counter < 0) {
                _counter = 0;
              }
            });
          },
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
        )
      ],
    );
  }
}
