import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:library17/presentations/common/commons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library17/presentations/cubit/page_cubit.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({
    Key? key,
    required this.imageUrl,
    required this.index,
  }) : super(key: key);

  final String imageUrl;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 2),
          SvgPicture.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: context.watch<PageCubit>().state == index ? ColorConstant.primary : ColorConstant.grey1,
          ),
          context.watch<PageCubit>().state == index ? Container(
            width: 20,
            height: 2,
            decoration: BoxDecoration(
              color: ColorConstant.primary,
              borderRadius: BorderRadius.circular(4),
            ),
          ) : Container(),
        ],
      ),
    );
  }
}
