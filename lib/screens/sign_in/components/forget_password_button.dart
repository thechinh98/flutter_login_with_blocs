import 'package:flutter/material.dart';
import 'package:flutter_qldt_hust/screens/forgot_password/forgot_password_screen.dart';

import '../../../constant.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, ForgetPasswordScreen.routeName),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          kForgetPasswordButtonText,
          textAlign: TextAlign.right,
          style: TextStyle(fontSize: 15, color: Colors.red),
        ),
      ),
    );
  }
}
