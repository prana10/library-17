import 'package:flutter/material.dart';
import 'package:library17/presentations/common/commons.dart';
import 'package:library17/presentations/modules/widgets/widgets.dart';
import 'package:toasty_snackbar/toasty_snackbar.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColorDark,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            header(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            CustomTextFormField(
              context: context,
              title: "Email Address",
              hintText: "Enter your email address",
              obscureText: false,
              imageUrl: "assets/Email_Icon.svg",
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              context: context,
              title: "Password",
              hintText: "Enter your password",
              obscureText: true,
              imageUrl: "assets/Password_Icon.svg",
            ),
            const SizedBox(height: 24),
            CustomSimpleElevatedButton(
              title: "Sign In",
              color: ColorConstant.primary,
              onTap: () {
                context.showToastySnackbar(
                  "Error",
                  "Please Insert your email and password",
                  AlertType.danger,
                );
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/main',
                  (route) => false,
                );
              },
            ),
            const SizedBox(height: 16),
            footer(context),
          ],
        ),
      ),
    );
  }

  Row footer(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: FontFamilyConstant.primaryFont.copyWith(
            color: ColorConstant.grey4,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/sign-up");
          },
          child: Text(
            "Sign Up",
            style: FontFamilyConstant.primaryFont.copyWith(
              color: ColorConstant.primary,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  Column header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi, Welcome Back",
          style: FontFamilyConstant.primaryFont.copyWith(
            color: ColorConstant.natural0,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "Sign in first",
          style: FontFamilyConstant.primaryFont.copyWith(
            color: ColorConstant.natural0,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
