import 'package:flutter/material.dart';
import 'package:flutter_qldt_hust/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_qldt_hust/screens/sign_in/sign_in_screen.dart';

final Map<String, WidgetBuilder> routes ={
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgetPasswordScreen.routeName: (context) => ForgetPasswordScreen(),
};