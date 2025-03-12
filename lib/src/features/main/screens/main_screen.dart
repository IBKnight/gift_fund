import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gift_fund/gen/assets.gen.dart';
import 'package:gift_fund/src/common/palette.dart';
import 'package:gift_fund/src/common/strings.dart';
import 'package:gift_fund/src/common/widgets/rounded_colored_box.dart';
import 'package:gift_fund/src/features/main/screens/holiday_planners_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTheme(
      data: const CupertinoThemeData(),
      child: Scaffold(
        backgroundColor: Palette.bgPrimary,
        appBar: AppBar(
          backgroundColor: Palette.bgPrimary,
          title: const Text(
            Strings.holidayPlanner,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        bottomNavigationBar: CupertinoTabBar(
          height: 82,
          backgroundColor: Palette.bgSecondary,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: CustomNavBarItem(
                selectedIndex: _selectedIndex,
                index: 0,
                iconPath: Assets.icons.holiday.path,
              ),
            ),
            BottomNavigationBarItem(
              icon: CustomNavBarItem(
                selectedIndex: _selectedIndex,
                index: 1,
                iconPath: Assets.icons.smileOutline.path,
              ),
            ),
            BottomNavigationBarItem(
              icon: CustomNavBarItem(
                selectedIndex: _selectedIndex,
                index: 2,
                iconPath: Assets.icons.statistic.path,
              ),
            ),
            BottomNavigationBarItem(
              icon: CustomNavBarItem(
                selectedIndex: _selectedIndex,
                index: 3,
                iconPath: Assets.icons.settingsOutlineSix.path,
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              _pageController.animateToPage(
                index,
                duration: Durations.medium1,
                curve: Curves.easeInOut,
              );
            });
          },
        ),
        body: PageView(
          controller: _pageController,
          children: const [
            HolidayPlannersScreen(),
            HolidayPlannersScreen(),
            HolidayPlannersScreen(),
            HolidayPlannersScreen(),
          ],
        ),
      ),
    );
  }
}

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
            ? Palette.circularIndicatorBg // Цвет фона для выбранной вкладки
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
