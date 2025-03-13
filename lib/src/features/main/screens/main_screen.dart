import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gift_fund/gen/assets.gen.dart';
import 'package:gift_fund/src/common/palette.dart';
import 'package:gift_fund/src/features/main/screens/diagram_screen.dart';
import 'package:gift_fund/src/features/main/screens/holiday_planners_screen.dart';
import 'package:gift_fund/src/features/main/screens/recepients_screen.dart';
import 'package:gift_fund/src/features/main/screens/settings_screen.dart';
import 'package:gift_fund/src/features/main/widgets/custom_nav_bar_item.dart';

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
      data: const CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      child: Scaffold(
        bottomNavigationBar: CupertinoTabBar(
          height: 82,
          backgroundColor: Palette.bgSecondary,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: CustomNavBarItem(
                selectedIndex: _selectedIndex,
                index: 0,
                iconPath: _selectedIndex == 0
                    ? Assets.icons.holiday.path
                    : Assets.icons.holidayOutline.path,
              ),
            ),
            BottomNavigationBarItem(
              icon: CustomNavBarItem(
                selectedIndex: _selectedIndex,
                index: 1,
                iconPath: _selectedIndex == 1
                    ? Assets.icons.smile.path
                    : Assets.icons.smileOutline.path,
              ),
            ),
            BottomNavigationBarItem(
              icon: CustomNavBarItem(
                selectedIndex: _selectedIndex,
                index: 2,
                iconPath: _selectedIndex == 2
                    ? Assets.icons.diagram.path
                    : Assets.icons.diagramOutline.path,
              ),
            ),
            BottomNavigationBarItem(
              icon: CustomNavBarItem(
                selectedIndex: _selectedIndex,
                index: 3,
                iconPath: _selectedIndex == 3
                    ? Assets.icons.settingsSix.path
                    : Assets.icons.settingsOutlineSix.path,
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              _pageController.jumpToPage(
                index,
              );
            });
          },
        ),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: const [
            HolidayPlannersScreen(),
            RecepientsScreen(),
            DiagramScreen(),
            SettingsScreen(),
          ],
        ),
      ),
    );
  }
}
