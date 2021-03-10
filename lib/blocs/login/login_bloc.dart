import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_qldt_hust/constant.dart';
import 'package:flutter_qldt_hust/validators/login_validation.dart';

class LoginBloc{
  StreamController _emailController = new StreamController();
  StreamController _passwordController = new StreamController();

  Stream get emailStream => _emailController.stream;
  Stream get passwordStream => _passwordController.stream;

  bool isValidInfo(String email, String password){
    if(!Validations.validEmail(email)){
      _emailController.sink.addError(kInvalidEmail);
      return false;
    }
    if(!Validations.validPassword(password)){
      _passwordController.sink.addError(kInvalidPassword);
      return false;
    }
    _emailController.sink.add("Hợp lệ");
    _passwordController.sink.add("Hợp lệ");
    return true;
  }
  void dispose() {
    _emailController.close();
    _passwordController.close();
  }
}