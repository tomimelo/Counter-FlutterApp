import 'package:flutter/material.dart';

import 'package:counter/src/pages/counter_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: CounterPage(),
      ),
    );
  }
}
