import 'package:flutter/material.dart';
import 'package:library17/presentations/common/commons.dart';
import 'package:library17/presentations/modules/widgets/widgets.dart';
import 'package:toasty_snackbar/toasty_snackbar.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColorDark,
      appBar: AppBar(
        backgroundColor: ColorConstant.bgColorDark,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          "Sign Up",
          style: FontFamilyConstant.primaryFont.copyWith(
            color: ColorConstant.natural0,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            header(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            CustomTextFormField(
              context: context,
              title: "Full Name",
              hintText: "Enter your Full Name",
              obscureText: false,
              imageUrl: "assets/Username_Icon.svg",
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              context: context,
              title: "Useraname",
              hintText: "Enter your username",
              obscureText: false,
              imageUrl: "assets/Username_Icon.svg",
            ),
            const SizedBox(height: 16),
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
              title: "Sign Up",
              color: ColorConstant.primary,
              onTap: () {
                context.showToastySnackbar(
                  "Success",
                  "Successfully Register your account",
                  AlertType.success,
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
          "Have an account?",
          style: FontFamilyConstant.primaryFont.copyWith(
            color: ColorConstant.grey4,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/sign-in");
          },
          child: Text(
            "Sign In",
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
          "Hi, Welcome To Notre Dame",
          style: FontFamilyConstant.primaryFont.copyWith(
            color: ColorConstant.natural0,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "Sign up first",
          style: FontFamilyConstant.primaryFont.copyWith(
            color: ColorConstant.natural0,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
