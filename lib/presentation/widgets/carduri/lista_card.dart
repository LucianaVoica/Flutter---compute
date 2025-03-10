import 'package:flutter/material.dart';
import 'package:flutter_test1/presentation/widgets/carduri/card.dart';

class ListaCarduri extends StatelessWidget {
  static const String route = '/carduri';
  const ListaCarduri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          return CardList(
            titlu: "Text $index",
            nume: "Nume $index",
            data: "Data: $index",
          );
        },
      ),
    );
  }
}
