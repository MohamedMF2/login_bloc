import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/login.screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
