import 'package:bank_project/shared/themes/app_images.dart';
import 'package:bank_project/shared/themes/app_text_styles.dart';
import 'package:bank_project/shared/themes/appcolors.dart';
import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
          color: AppColors.shape,
          borderRadius: BorderRadius.circular(5),
          border: Border.fromBorderSide(BorderSide(color: AppColors.stroke))),
      child: Row(children: [
        Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.google),
                SizedBox(width: 17),
                Container(
                  height: 56,
                  width: 1,
                  color: AppColors.stroke,
                )
              ],
            )),
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Entrar com google", style: TextStyles.buttonGray),
            ],
          ),
        ),
        Expanded(child: Container())
      ]),
    );
  }
}
