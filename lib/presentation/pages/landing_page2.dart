import 'package:flutter/material.dart';
import 'package:flutter_test1/presentation/widgets/avatar.dart';
import 'package:flutter_test1/presentation/widgets/carduri/lista_card.dart';
import 'package:flutter_test1/presentation/widgets/my_form.dart';

class LandingPageV2 extends StatefulWidget {
  static const String route = '/';
  const LandingPageV2({super.key, required this.appTitle});

  final String appTitle;

  @override
  State<LandingPageV2> createState() => _LandingPageV2State();
}

class _LandingPageV2State extends State<LandingPageV2> {
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
        return MyCustomForm();
      case 1:
        return ListaCarduri();
      default:
        return MyCustomForm();
    }
  }
}
