import 'package:flutter/material.dart';
import 'package:library17/presentations/common/commons.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColorDark,
      body: Center(
        child: Text(
          "Setting Page",
          style: FontFamilyConstant.primaryFont.copyWith(
            color: ColorConstant.natural0,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
