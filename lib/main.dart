import 'package:flutter/material.dart';
import 'package:login_cerveza/src/presentation/screens/home_screen.dart';
import 'package:login_cerveza/src/presentation/screens/login_screen.dart';
import 'package:login_cerveza/src/presentation/screens/register_screen.dart';
import 'package:login_cerveza/src/presentation/screens/welcome_scree.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Material App',
      initialRoute: "/welcome",
      routes: {
        "/welcome" : (context) => const  WelcomeScreen(),
        "/login" : (context) => const LoginScreen(),
        "/register" : (context) => const  RegisterScreen(),
        "/home" : (context) => const  HomeScreen(),
      });
  }
}