import 'package:bank_project/modules/login/login_controller.dart';
import 'package:bank_project/shared/themes/app_images.dart';
import 'package:bank_project/shared/themes/app_text_styles.dart';
import 'package:bank_project/shared/themes/appcolors.dart';
import 'package:bank_project/shared/widgets/social_button/social_login.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.36,
              color: AppColors.primary,
            ),
            Positioned(
                top: 30,
                left: 0,
                right: 0,
                child: Image.asset(
                  AppImages.person,
                  width: 208,
                  height: 300,
                )),
            Positioned(
              bottom: size.height * 0.1,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 70, right: 70),
                    child: Text('Organize seus boletos em um só lugar',
                        textAlign: TextAlign.center,
                        style: TextStyles.titleHome),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 40, right: 40),
                    child: SocialLoginButton(onTap: () {
                      controller.googleSignIn(context);
                    }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
