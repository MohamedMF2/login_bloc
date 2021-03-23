import 'dart:async';
import 'package:login_bloc/src/blocs/validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

//*Getters
  // Add Date to a Stream
  Stream<String> get email => _email.stream.transform(validatEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<bool> get submitValid =>
      Rx.combineLatest2(email, password, (e, p) => true);

  //Change Data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  submit() {
    final email = _email.value;
    final password = _password.value;
    print('password = $password , email=$email');
  }

  dispose() {
    _email.close();
    _password.close();
  }
}

// Bloc bloc = Bloc();
