import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gift_fund/gen/assets.gen.dart';
import 'package:gift_fund/src/common/palette.dart';
import 'package:gift_fund/src/common/strings.dart';
import 'package:gift_fund/src/common/widgets/rounded_colored_box.dart';
import 'package:gift_fund/src/features/main/widgets/budget_indicator.dart';

class HolidayPlannersScreen extends StatelessWidget {
  const HolidayPlannersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedColoredBox(
              height: 152,
              padding: const EdgeInsets.all(12),
              bgColor: Palette.bgSecondary,
              child: Row(
                children: [
                  const BudgetIndicator(
                    budget: 1400,
                    currentBudget: 1000,
                  ),
                  const SizedBox(width: 8),
                  Column(
                    children: [
                      const Text(
                        Strings.monthlyBudget,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 24),
                      CupertinoButton(
                        color: Palette.accentSecondaryBlue,
                        borderRadius: BorderRadius.circular(20),
                        child: const Text(Strings.editBudget),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            CupertinoButton(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              color: Palette.bgSecondary,
              borderRadius: BorderRadius.circular(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    Strings.urReminders,
                  ),
                  SvgPicture.asset(Assets.icons.arrowRight.path),
                ],
              ),
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            const Text(
              Strings.eventHistory,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            Center(
              child: Column(
                children: [
                  SvgPicture.asset(Assets.icons.empty.path),
                  const SizedBox(height: 12),
                  Text(
                    Strings.noSuchEvents,
                    style: TextStyle(
                      fontSize: 16,
                      color: Palette.sixtyPercWhite,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            SizedBox(
              width: double.infinity,
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(vertical: 17),
                color: Palette.accentSecondaryBlue,
                borderRadius: BorderRadius.circular(20),
                child: const Text(Strings.addExpense),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
