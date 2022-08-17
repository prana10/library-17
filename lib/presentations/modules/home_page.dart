import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:library17/presentations/common/commons.dart';
import 'package:library17/presentations/cubit/page_cubit.dart';
import 'package:library17/presentations/modules/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColorDark,
      body: BlocBuilder<PageCubit, int>(
        builder: (context, state) {
          return SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(24),
              children: [
                header(context),
                const SizedBox(height: 30),
                continueRead(),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Popular Books",
                      style: FontFamilyConstant.primaryFont.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ColorConstant.natural0,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const ContinueReadCard(),
                    const SizedBox(height: 16),
                    const ContinueReadCard(),
                    const SizedBox(height: 16),
                    const ContinueReadCard(),
                    const SizedBox(height: 80),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Column continueRead() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Continue reading",
          style: FontFamilyConstant.primaryFont.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: ColorConstant.natural0,
          ),
        ),
        const SizedBox(height: 16),
        const ContinueReadCard(),
      ],
    );
  }

  Widget header(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              context.read<PageCubit>().setPage(3);
            },
            child: Image.asset(
              "assets/profile_picture.png",
              width: 45,
              height: 45,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: GestureDetector(
              onTap: () {
                context.read<PageCubit>().setPage(3);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello Prana",
                    style: FontFamilyConstant.primaryFont.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorConstant.natural0,
                    ),
                  ),
                  Text(
                    "Ready to read a book?",
                    style: FontFamilyConstant.primaryFont.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorConstant.natural0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SvgPicture.asset(
            "assets/Notification_Icon.svg",
            // width: 45,
            // height: 45,
          ),
        ],
      );
}
