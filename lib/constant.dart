import 'package:flutter/material.dart';

const String kInvalidEmail = "Hãy điền email hợp lệ";
const String kNullEmail = "Vui lòng điền email";
const String kNullPassword = "Vui lòng điền mật khẩu";
const String kInvalidPassword ="Hãy điền mật khẩu hợp lệ";

const String kSignInButtonText = "ĐĂNG NHẬP";
const String kForgetPasswordButtonText = "Quên mật khẩu?";
const String kForgetPasswordSubTit =
    "Vui lòng kiểm tra lại email của bạn, chúng tôi sẽ gửi mã OTP xác nhận";
final RegExp emailValidatorRegExp = RegExp(r"^[0-9.]+@[a-zA-Z]+\.[a-zA-Z]+");
