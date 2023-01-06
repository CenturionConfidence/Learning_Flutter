import 'package:flutter/material.dart';
import 'package:learning_flutter/home_page.dart';
import 'package:learning_flutter/main.dart';
import 'package:learning_flutter/profile_screen.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({super.key});

  @override
  State<RootWidget> createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedIndex: _currentIndex,
        onDestinationSelected: ((value) => setState(() {
              _currentIndex = value;
            })),
      ),
      body: _pages[_currentIndex],
    );
  }
}
