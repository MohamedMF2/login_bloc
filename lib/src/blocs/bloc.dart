import 'dart:async';

import 'package:login_bloc/src/blocs/validators.dart';

class Bloc extends Object with Validators {
  final _emailController = new StreamController<String>();
  final _passwordController = new StreamController<String>();

//*Getters
  // Add Date to a Stream
  Stream<String> get email => _emailController.stream.transform(validatEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  //Change Data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

Bloc bloc = Bloc();
