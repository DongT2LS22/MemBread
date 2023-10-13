import 'package:flutter/material.dart';
import 'package:gr1_flutter/screens/home_page/home_page.dart';
import 'package:gr1_flutter/themes/dark_theme.dart';
import 'package:gr1_flutter/themes/light_theme.dart';

void main() async {
  // User.register(User(name: "Dong pham",email: "dongt2ls1720@gmail.com"),"12345678");
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

