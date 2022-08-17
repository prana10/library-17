import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:library17/presentations/common/commons.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.context,
    required this.title,
    required this.hintText,
    required this.imageUrl,
    this.obscureText = false,
  }) : super(key: key);

  final BuildContext context;
  final String title;
  final String hintText;
  final String imageUrl;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: FontFamilyConstant.primaryFont.copyWith(
            color: ColorConstant.natural0,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: ColorConstant.grey3,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                imageUrl,
                width: 14,
                height: 14,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: TextFormField(
                  obscureText: obscureText,
                  style: FontFamilyConstant.primaryFont.copyWith(
                    color: ColorConstant.natural0,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  cursorColor: ColorConstant.primary,
                  decoration: InputDecoration.collapsed(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: FontFamilyConstant.primaryFont.copyWith(
                      color: ColorConstant.grey1,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
