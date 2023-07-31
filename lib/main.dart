import 'package:flutter/material.dart';
import 'package:gr1_flutter/datas/course.dart';
import 'package:gr1_flutter/models/course/course.dart';
import 'package:gr1_flutter/models/user.dart';
import 'package:gr1_flutter/screens/home_page/home_page.dart';
import 'package:gr1_flutter/screens/study_page/flash_card/flash_card_page.dart';
import 'package:gr1_flutter/themes/dark_theme.dart';
import 'package:gr1_flutter/themes/light_theme.dart';

void main() async {
  runApp(const MyApp());
  // print(Course.getById(2));
  // Course.create(Course(title: "Hello world",author: User(id: "1"),description: "Hello ae"));
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
      home: HomePage(id: 2,),
    );
  }
}

