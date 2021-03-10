import 'package:flutter/material.dart';
import 'package:flutter_qldt_hust/blocs/forgot_password/forget_password_bloc.dart';
import 'package:flutter_qldt_hust/components/default_button.dart';
import 'package:flutter_qldt_hust/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  EmailBloc emailBloc = EmailBloc();
  TextEditingController emailInputController = TextEditingController();
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
                height: 30,
              ),
              Text(
                kForgetPasswordSubTit,
                maxLines: 2,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              StreamBuilder<Object>(
                  stream: emailBloc.emailStream,
                  builder: (context, snapshot) {
                    return TextFormField(
                      controller: emailInputController,
                      decoration: InputDecoration(
                          labelText: "Email nhà trường cung cấp",
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              gapPadding: 10),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              gapPadding: 10),
                          errorText: snapshot.hasError ? snapshot.error : null),
                    );
                  }),
              SizedBox(
                height: 30,
              ),
              DefaultButton(text: "Nhận OTP", press: () {
                if(emailBloc.isValidEmail(emailInputController.text)){
                  print("Aukay");
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
