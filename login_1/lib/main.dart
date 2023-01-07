import 'package:flutter/material.dart';
import 'package:login_1/login_page/view/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'font'
      ),
      home: const LoginScreen()
    );
  }
}
