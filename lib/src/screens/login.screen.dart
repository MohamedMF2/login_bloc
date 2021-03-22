import 'package:flutter/Material.dart';
import 'package:flutter/services.dart';

class loginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Container(
            margin: EdgeInsets.only(top: 50.0),
          ),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'do@examble.com',
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      decoration: InputDecoration(
        hintText: '******',
        labelText: 'Password',
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      child: Text('login'),
      onPressed: () {},
    );
    ;
  }
}
