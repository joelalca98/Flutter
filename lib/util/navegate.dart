import 'package:flutter/cupertino.dart';

class Navegate {

  static void goToWelcome(BuildContext context) {
    Navigator.pushNamed(context, "/welcome");
  }

  static void goToLogin(BuildContext context) {
    Navigator.pushNamed(context, "/login");
  }

  static void goToRegister(BuildContext context) {
    Navigator.pushNamed(context, "/register");
  }
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/home");
  }
  
}