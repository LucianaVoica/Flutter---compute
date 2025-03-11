import 'package:flutter/material.dart';
import 'package:flutter_test1/presentation/widgets/avatar.dart';
import 'package:flutter_test1/presentation/widgets/carduri/lista_carduri.dart';
import 'package:flutter_test1/presentation/widgets/calculator/calculator_form.dart';

class LandingPage extends StatefulWidget {
  static const String route = '/';
  const LandingPage({super.key, required this.appTitle});

  final String appTitle;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.appTitle), actions: [Avatar()]),
      body: getCurrentPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (int index) {
          setState(() {
            pageIndex = index;
          });
        },
        items: [
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
        return CalculatorForm();
      case 1:
        return ListaCarduri();
      default:
        return CalculatorForm();
    }
  }
}
