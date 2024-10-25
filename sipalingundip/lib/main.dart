import 'package:flutter/material.dart';
import 'view_ruang.dart';
import 'acc_dekan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mencoba',
      initialRoute: '/second',
      routes: {
        '/': (context) => ViewRuang(),
        '/second': (context) => AccDekan(),
      },
    );
  }
}

