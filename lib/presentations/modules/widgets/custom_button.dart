import 'package:flutter/material.dart';
import 'package:library17/presentations/common/commons.dart';

class CustomSimpleElevatedButton extends StatelessWidget {
  const CustomSimpleElevatedButton({
    Key? key,
    required this.color,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        primary: color,
        elevation: 0.5,
        minimumSize: const Size.fromHeight(48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        title,
        style: FontFamilyConstant.primaryFont.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: ColorConstant.natural0,
        ),
      ),
    );
  }
}
