import 'package:chat_mate/presentation/auth/Sign_up.dart';
import 'package:chat_mate/presentation/auth/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(background: Colors.white)
      ),
      home: const LoginScreen(),
    );
  }
}
