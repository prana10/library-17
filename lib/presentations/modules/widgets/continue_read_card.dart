import 'package:flutter/material.dart';
import 'package:library17/presentations/common/commons.dart';

class ContinueReadCard extends StatelessWidget {
  const ContinueReadCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorConstant.black2,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cantik itu Luka",
                        style: FontFamilyConstant.primaryFont.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorConstant.natural0,
                        ),
                      ),
                      Text(
                        "Eka kurniawan",
                        style: FontFamilyConstant.primaryFont.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: ColorConstant.grey5,
                        ),
                      ),
                      Text(
                        "12 January 2022 - 19 January 2022",
                        style: FontFamilyConstant.primaryFont.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: ColorConstant.grey5,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  "Not Completed",
                  style: FontFamilyConstant.primaryFont.copyWith(
                    color: ColorConstant.orange1,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            "assets/cantik_itu_luka_img.png",
            width: 84,
            height: 122,
          ),
        ],
      ),
    );
  }
}
