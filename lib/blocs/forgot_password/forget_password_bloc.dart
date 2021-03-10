import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qldt_hust/constant.dart';
import 'package:flutter_qldt_hust/validators/login_validation.dart';

class EmailBloc {
  StreamController _emailController = StreamController();

  Stream get emailStream => _emailController.stream;

  bool isValidEmail(String email){
    if(!Validations.validEmail(email)){
      _emailController.sink.addError(kInvalidEmail);
      return false;
    }
    _emailController.sink.add("Hợp lệ");
    return true;
  }
}