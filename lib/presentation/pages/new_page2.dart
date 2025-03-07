import 'package:flutter/material.dart';
import 'package:flutter_test1/presentation/pages/new_page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.red,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(Page3.route(parametru: 'Ceva'));
        },
        child: Text('Page 3'),
      ),
    );
  }
}
