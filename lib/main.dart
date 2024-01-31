import 'package:flutter/material.dart';
import 'package:instagram/pages/register/login_page/login_page.dart';
import 'package:instagram/theme/lightt_theme.dart';
import 'package:instagram/theme/darkk_theme.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const LoginPage(),
      //home: const MyBottomNaw(),
    );
  }
}
