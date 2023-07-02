import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/login_page/login_page.dart';
import 'package:gr1_flutter/screens/welcome_page/welcome_page.dart';
import 'package:gr1_flutter/themes/dark_theme.dart';
import 'package:gr1_flutter/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}

