import 'package:flutter/material.dart';
import 'package:learning_flutter/navigation.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const header = 'Home';
  static const profile = 'My Profile';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Learning flutter',
      home: RootWidget(),
    );
  }
}
