import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:ui/core/constant/app_color.dart';
import 'package:ui/core/constant/app_text.dart';
import 'package:ui/product/widget/custom_elevated_button.dart';
import 'package:ui/product/widget/custom_textfield.dart';
import 'package:ui/view/register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.height * 1,
        width: context.width * 1,
        child: Column(
          children: [
            context.emptySizedHeightBoxLow3x,
            SizedBox(
              height: context.height * 0.2,
              child: Image.asset('asset/images/loginill.png'),
            ),
            context.emptySizedHeightBoxLow3x,
            Text(
              AppText.login.toUpperCase(),
              style: context.textTheme.headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            context.emptySizedHeightBoxLow3x,
            //
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
            SizedBox(
              height: context.height * 0.1,
              width: context.width * 0.85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Colors.white,
                        activeTrackColor: AppColors.loginColor,
                      ),
                      const Text(AppText.rememberMe),
                    ],
                  ),
                  const Text(
                    AppText.already,
                  ),
                ],
              ),
            ),
            context.emptySizedHeightBoxLow,
            CustomElevatedButton(
              child: Text(
                AppText.login.toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ),
              borderRadius: 20,
              color: AppColors.loginColor,
              height: context.height * 0.07,
              width: context.width * 0.6,
            ),
            context.emptySizedHeightBoxLow3x,
            const Text(AppText.or),
            context.emptySizedHeightBoxLow3x,
            const Text(AppText.loginwith),
            context.emptySizedHeightBoxLow,
            SizedBox(
              height: context.height * 0.1,
              width: context.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: null,
                      icon: Image.asset('asset/images/google.png')),
                  IconButton(
                      onPressed: null,
                      icon: Image.asset('asset/images/apple.png')),
                  IconButton(
                      onPressed: null,
                      icon: Image.asset('asset/images/face.png')),
                ],
              ),
            ),
            SizedBox(
              width: context.width * 0.7,
              height: context.height * 0.08,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Dont have an account?"),
                  TextButton(
                    child: const Text(
                      "Register now",
                      style: TextStyle(color: AppColors.loginColor),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterView()),
                      );
                    },
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
