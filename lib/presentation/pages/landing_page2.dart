import 'package:flutter/material.dart';
import 'package:flutter_test1/presentation/pages/new_page.dart';
import 'package:flutter_test1/presentation/pages/new_page2.dart';
import 'package:flutter_test1/presentation/pages/page_1.dart';
import 'package:flutter_test1/presentation/widgets/avatar.dart';
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
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Widget getCurrentPage() {
    switch (pageIndex) {
      case 0:
        return Page1();
      case 1:
        return Page2();
      default:
        return Page1();
    }
  }
}
