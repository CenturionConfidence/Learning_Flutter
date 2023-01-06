import 'package:flutter/material.dart';
import 'package:learning_flutter/Learn_flutter.dart';
import 'package:learning_flutter/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyApp.header),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const LearnFlutter();
                },
              ),
            );
          },
          child: const Text('Learn Flutter'),
        ),
      ),
    );
  }
}
