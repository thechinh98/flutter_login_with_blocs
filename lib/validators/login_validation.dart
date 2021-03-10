import 'package:flutter_qldt_hust/model/User.dart';

import '../constant.dart';

class Validations {
  static bool validEmail(String email) {
    return email != null && emailValidatorRegExp.hasMatch(email);
  }

  static bool validPassword(String password) {
    print(password);
    return password.length > 6;
  }
}
