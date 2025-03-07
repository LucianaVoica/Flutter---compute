import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  static const String route = '/new';
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(width: double.infinity, height: 300, color: Colors.red),
    );
  }
}
