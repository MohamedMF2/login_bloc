import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/login.screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'login',
      home: Scaffold(
        body: loginScreen(),
      ),
    );
  }
}
