import 'package:flutter/material.dart';
import 'package:flutter_test1/presentation/pages/landing_page.dart';
import 'package:flutter_test1/theme/theme.dart';

//! FOARTE IMPORTANT -> main-ul vrem sa ramana cat mai curat si cu cat mai putin cod
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle =
        'Calculator'; //! extrage  constantele intr-o clasa separata;
    return MaterialApp(
      title: appTitle,
      theme: AppTheme.lightTheme, //? am extras tema
      themeMode: ThemeMode.system,
      darkTheme: AppTheme.lightTheme,

      //! de aici
      home: LandingPage(appTitle: appTitle),
      //! pana aici este o pagina separata trebuie sa arate asa home: LandingPage() orice alta denumire atat
    );
  }
}


//TODO add google_fonts si foloseste peste tot fontul JOST