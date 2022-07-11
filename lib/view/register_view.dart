import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:ui/core/constant/app_color.dart';
import 'package:ui/core/constant/app_text.dart';
import 'package:ui/product/widget/custom_elevated_button.dart';
import 'package:ui/product/widget/custom_textfield.dart';

import 'login_view.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  SizedBox _body(BuildContext context) {
    return SizedBox(
      height: context.height * 1,
      width: context.width * 1,
      child: Column(
        children: [
          context.emptySizedHeightBoxLow3x,
          topImage(context),
          context.emptySizedHeightBoxLow3x,
          topText(context),
          context.emptySizedHeightBoxLow3x,
          CustomTextField(
            height: context.height * 0.07,
            width: context.width * 0.8,
            hinttext: AppText.firstName,
            prefixIcon: const Icon(Icons.person),
          ),
          context.emptySizedHeightBoxLow,
          CustomTextField(
            height: context.height * 0.07,
            width: context.width * 0.8,
            hinttext: AppText.lastName,
            prefixIcon: const Icon(Icons.person),
          ),
          context.emptySizedHeightBoxLow,
          CustomTextField(
            height: context.height * 0.07,
            width: context.width * 0.8,
            hinttext: AppText.email,
            prefixIcon: const Icon(Icons.email),
          ),
          context.emptySizedHeightBoxLow,
          CustomTextField(
            height: context.height * 0.07,
            width: context.width * 0.8,
            hinttext: AppText.password,
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: const Icon(Icons.remove_red_eye),
          ),
          context.emptySizedHeightBoxLow,
          CustomTextField(
            height: context.height * 0.07,
            width: context.width * 0.8,
            hinttext: AppText.confirm,
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: const Icon(Icons.remove_red_eye),
          ),
          context.emptySizedHeightBoxLow3x,
          CustomElevatedButton(
            child: Text(
              AppText.signUp.toUpperCase(),
              style: const TextStyle(color: Colors.white),
            ),
            borderRadius: 20,
            color: AppColors.loginColor,
            height: context.height * 0.07,
            width: context.width * 0.6,
          ),
          context.emptySizedHeightBoxLow3x,
          bottomText(context),
        ],
      ),
    );
  }

  SizedBox topImage(BuildContext context) {
    return SizedBox(
      height: context.height * 0.2,
      child: Image.asset('asset/images/register.png'),
    );
  }

  Text topText(BuildContext context) {
    return Text(
      AppText.signUp.toUpperCase(),
      style: context.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
    );
  }

  SizedBox bottomText(BuildContext context) {
    return SizedBox(
      width: context.width * 0.7,
      height: context.height * 0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            AppText.already,
          ),
          TextButton(
            child: const Text(
              AppText.login,
              style: TextStyle(color: AppColors.loginColor),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginView()),
              );
            },
          )
        ],
      ),
    );
  }
}
