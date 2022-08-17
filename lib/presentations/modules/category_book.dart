import 'package:flutter/material.dart';
import 'package:library17/presentations/common/commons.dart';

class CategoryBookPage extends StatelessWidget {
  const CategoryBookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColorDark,
      body: Center(
        child: Text(
          "category Page",
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
