import 'package:flutter/material.dart';
import 'components/card.dart';

class ListaCarduri extends StatelessWidget {
  const ListaCarduri({super.key});
  static const String route = '/carduri';

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (BuildContext context, int index) {
        return CardComponent(
          titlu: 'Text $index',
          nume: 'Nume $index',
          data: 'Data: $index',
        );
      },
    );
  }
}
