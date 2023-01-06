import 'package:flutter/material.dart';
import 'package:learning_flutter/main.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyApp.profile),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.arrow_upward),
            title: Text('Items ${index + 1}'),
            trailing: const Icon(Icons.propane_outlined),
          );
        },
      ),
    );
  }
}
