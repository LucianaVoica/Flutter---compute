import 'package:flutter/material.dart';
import 'presentation/pages/landing_page.dart';
import 'theme/theme.dart';

//! FOARTE IMPORTANT -> main-ul vrem sa ramana cat mai curat si cu cat mai putin cod
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle =
        'Calculator'; //! extrage  constantele intr-o clasa separata;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: AppTheme.lightTheme, //? am extras tema
      darkTheme: AppTheme.lightTheme,
      home: const LandingPage(appTitle: appTitle),
      // onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
