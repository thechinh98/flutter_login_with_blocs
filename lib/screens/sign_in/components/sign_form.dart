import 'package:flutter/material.dart';
import 'package:flutter_qldt_hust/blocs/login/login_bloc.dart';
import 'package:flutter_qldt_hust/components/default_button.dart';
import 'package:flutter_qldt_hust/constant.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool _obscureText = true;
  LoginBloc loginBloc = LoginBloc();
  TextEditingController _emailInputController = TextEditingController();
  TextEditingController _passwordInputController = TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();
  void _toggle() {
    _obscureText = !_obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildEmailInput(),
        SizedBox(
          height: 20,
        ),
        buildPasswordInput(),
        SizedBox(
          height: 40,
        ),
        DefaultButton(text: kSignInButtonText, press: () {
          if(loginBloc.isValidInfo(_emailInputController.text, _passwordInputController.text)){
            print("Aukay");
          }
        }),
      ],
    );
  }

  StreamBuilder buildPasswordInput() {
    return StreamBuilder(
        stream: loginBloc.passwordStream,
        builder: (context, snapshot) {
          return TextFormField(
            key: _formKey,
            controller: _passwordInputController,
            obscureText: _obscureText,
            decoration: InputDecoration(
              labelText: "Mật khẩu",
              contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye),
                onPressed: () {
                  setState(() {
                    _toggle();
                  });
                },
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30), gapPadding: 10),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30), gapPadding: 10),
              errorText: snapshot.hasError? snapshot.error: null,
            ),
          );
        }
      );
  }

  StreamBuilder buildEmailInput() {
    return StreamBuilder(
        stream: loginBloc.emailStream,
        builder: (context, snapshot) {
          return TextFormField(
            controller: _emailInputController,
            decoration: InputDecoration(
              labelText: "Tài khoản",
              contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30), gapPadding: 10),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30), gapPadding: 10),
              errorText: snapshot.hasError? snapshot.error : null
            ),
          );
        }
      );
  }

}
