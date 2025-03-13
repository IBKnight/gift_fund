import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gift_fund/src/common/palette.dart';
import 'package:gift_fund/src/common/widgets/rounded_colored_box.dart';

class CustomNavBarItem extends StatelessWidget {
  final int selectedIndex;
  final int index;
  final String iconPath;

  const CustomNavBarItem({
    super.key,
    required this.selectedIndex,
    required this.index,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedColoredBox(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
        bgColor: selectedIndex == index
            ? Palette.circularIndicatorBg
            : Colors.transparent,
        child: SvgPicture.asset(
          iconPath,
          colorFilter: ColorFilter.mode(
            selectedIndex == index
                ? Palette.primaryBlue
                : Palette.sixtyPercWhite,
            BlendMode.srcIn,
          ),
        ));
  }
}
