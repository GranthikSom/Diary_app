import 'package:flutter/material.dart';

import '../features/drawer.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      drawer: const MyDrawer(),
      body: const Center(child: Text('Settings content goes here')),
    );
  }
}
