import 'package:flutter/material.dart';
import 'package:flutter_test1/presentation/pages/new_page.dart';
import 'package:flutter_test1/presentation/widgets/avatar.dart';
import 'package:flutter_test1/presentation/widgets/my_form.dart';

class LandingPage extends StatelessWidget {
  static const String route = '/';
  const LandingPage({super.key, required this.appTitle});

  final String appTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appTitle), actions: [Avatar()]),
      body: Column(
        children: [
          const MyCustomForm(),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(NewPage.route);
            },
            child: Text('Pagina 2'),
          ),
        ],
      ),
    );
  }
}
