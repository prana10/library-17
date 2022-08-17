import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library17/presentations/common/commons.dart';
import 'package:library17/presentations/cubit/page_cubit.dart';
import 'package:library17/presentations/modules/modules.dart';
import 'package:library17/presentations/modules/widgets/custom_bottom_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Stack(
              children: [
                body(state),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      margin: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: ColorConstant.grey3,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(),
                          CustomBottomNavbar(
                            imageUrl: "assets/fi_globe.svg",
                            index: 0,
                          ),
                          CustomBottomNavbar(
                            imageUrl: "assets/fi_book-open.svg",
                            index: 1,
                          ),
                          CustomBottomNavbar(
                            imageUrl: "assets/fi_credit-card.svg",
                            index: 2,
                          ),
                          CustomBottomNavbar(
                            imageUrl: "assets/fi_settings.svg",
                            index: 3,
                          ),
                          SizedBox(),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget body(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const CategoryBookPage();
      case 2:
        return const TransactionPage();
      case 3:
        return const SettingPage();
      default:
        return const HomePage();
    }
  }
}
