import 'package:flutter/widgets.dart';
import 'package:flutter_test1/presentation/widgets/liste/lista_card.dart';
import 'package:flutter_test1/presentation/widgets/my_form.dart';

class AppRoutes {
  static const String home = '/';
  static const String lista = '/lista';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => MyCustomForm(),
      lista: (context) => ListaCarduri(),
    };
  }
}
