import 'package:flutter/material.dart';
import 'package:library17/presentations/common/commons.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      // User? user = FirebaseAuth.instance.currentUser;
      // if (user == null) {
      //   Navigator.pushNamedAndRemoveUntil(
      //       context, '/sign-in', (route) => false);
      // } else {
      //   print(user.email);
      //   Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
      // }
      Navigator.pushNamedAndRemoveUntil(
        context,
        '/sign-in',
        (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.bgColorDark,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Lottie.asset(
              //   "assets/library_icon.json",
              //   width: 200,
              //   height: 200,
              // ),
              // const SizedBox(height: 8),
              Text(
                "Library 17",
                style: FontFamilyConstant.primaryFont.copyWith(
                  color: ColorConstant.natural0,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
