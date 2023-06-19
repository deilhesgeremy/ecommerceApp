import 'package:flutter/material.dart';

import './pages/signUp.dart';
import './pages/login.dart';
import './pages/forgotPassword.dart';
import './pages/home.dart';
import './pages/categorieList.dart';
import './pages/categorieFiltre.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ECommerce',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SignupPage(), // Renommé de SignUpPage à SignupPage
        '/login': (context) => SigninPage(), // Renommé de LoginPage à SigninPage
        '/forgotPassword': (context) => ForgotPasswordPage(),
        '/home': (context) => HomePage(),
        '/categorieList': (context) => CategoriesOverview(),
        '/categorieFiltre': (context) => CategoryFilterPage(),
      },
    );
  }
}
