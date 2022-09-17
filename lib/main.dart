import 'package:flutter/material.dart';
import 'package:flutter_provider/home_screen.dart';
import 'package:flutter_provider/provider/count_provider.dart';
import 'package:flutter_provider/screens/count_example.dart';
import 'package:flutter_provider/stateful_widget_screen.dart';
import 'package:flutter_provider/why_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CountExample(),
      ),
    );
  }
}
