import 'package:flutter/material.dart';
import 'package:flutter_test1/presentation/pages/new_page.dart';
import 'package:flutter_test1/presentation/widgets/my_form.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyCustomForm(),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(NewPage.route);
          },
          child: Text('Pagina 2'),
        ),
      ],
    );
  }
}
