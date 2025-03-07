import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  static MaterialPageRoute<Page3> route({required String parametru}) =>
      MaterialPageRoute(builder: (_) => Page3(parametru: parametru));
  const Page3({super.key, required this.parametru});
  final String parametru;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(height: 200, width: 200, color: Colors.red),
    );
  }
}
