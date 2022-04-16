import 'package:bank_project/modules/login/login_page.dart';
import 'package:bank_project/modules/splash/splash_page.dart';
import 'package:bank_project/shared/themes/appcolors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bank Project",
      theme: ThemeData(primaryColor: AppColors.primary),
      home: LoginPage(),
    );
  }
}
