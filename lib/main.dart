import 'package:flutter/material.dart';
import 'package:flutter_provider/home_screen.dart';
import 'package:flutter_provider/stateful_widget_screen.dart';
import 'package:flutter_provider/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WhyProviderScreen(),
    );
  }
}
