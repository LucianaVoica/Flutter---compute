import 'package:flutter/material.dart';

import '../widgets/avatar.dart';
import '../widgets/calculator/calculator_form.dart';
import '../widgets/carduri/lista_carduri.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required this.appTitle});
  static const String route = '/';

  final String appTitle;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appTitle),
        actions: const <Widget>[Avatar()],
      ),
      body: getCurrentPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (int index) {
          setState(() {
            pageIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy),
            label: 'Carduri',
          ),
        ],
      ),
    );
  }

  Widget getCurrentPage() {
    switch (pageIndex) {
      case 0:
        return const CalculatorForm();
      case 1:
        return const ListaCarduri();
      default:
        return const CalculatorForm();
    }
  }
}
