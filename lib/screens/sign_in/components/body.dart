import 'package:flutter/material.dart';
import 'package:flutter_qldt_hust/constant.dart';
import 'package:flutter_qldt_hust/screens/sign_in/components/forget_password_button.dart';
import 'package:flutter_qldt_hust/screens/sign_in/components/sign_form.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              SvgPicture.asset(
                "assets/icons/Logo Hust.svg",
                height: 180,
                width: 150,
              ),
              SizedBox(
                height: 90,
              ),
              SignInForm(),
              SizedBox(
                height: 20,
              ),
              ForgetPasswordButton()
            ],
          ),
        ),
      ),
    );
  }
}

