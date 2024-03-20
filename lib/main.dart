import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr1_flutter/screens/home_page_remake/home_page.dart';
import 'package:gr1_flutter/screens/streak_page/streak_page.dart';
import 'package:gr1_flutter/themes/dark_theme.dart';
import 'package:gr1_flutter/themes/light_theme.dart';

void main() async {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: HomePage(courseId: 4,),
    );
  }
}
