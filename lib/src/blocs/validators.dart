import 'dart:async';

class Validators {
  final validatEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (email.contains('@')) {
        sink.add(email);
      } else {
        sink.addError('enter a valid email');
      }
    },
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if (password.length >= 4) {
        sink.add(password);
      } else {
        sink.addError('password must be at least 4 characters  ');
      }
    },
  );
}
