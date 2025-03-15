import 'package:flutter/material.dart';
import 'package:gift_fund/src/common/palette.dart';
import 'package:gift_fund/src/common/strings.dart';
import 'package:gift_fund/src/common/widgets/rounded_colored_box.dart';
import 'package:gift_fund/src/features/main/widgets/budget_pie_chart.dart';

class DiagramScreen extends StatelessWidget {
  const DiagramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgPrimary,
      appBar: AppBar(
        backgroundColor: Palette.bgPrimary,
        title: const Text(
          Strings.giftAnalytics,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Text(
                Strings.budgetExpend,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontFamily: Theme.of(context).textTheme.bodyLarge?.fontFamily,
                ),
              ),
              const SizedBox(height: 8),
              RoundedColoredBox(
                padding: const EdgeInsets.all(12),
                bgColor: Palette.bgSecondary,
                child: Center(
                  child: Column(
                    children: [
                      const BudgetPieChart(
                        totalBudget: 0,
                        spentBudget: 400,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        Strings.notInfoYet,
                        style: TextStyle(
                          color: Palette.sixtyPercWhite,
                          fontWeight: FontWeight.w500,
                          fontFamily:
                              Theme.of(context).textTheme.bodyLarge?.fontFamily,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                Strings.costComparison,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontFamily: Theme.of(context).textTheme.bodyLarge?.fontFamily,
                ),
              ),
              const SizedBox(height: 8),
              RoundedColoredBox(
                height: 200,
                padding: const EdgeInsets.all(12),
                bgColor: Palette.bgSecondary,
                child: Center(
                  child: Text(
                    Strings.notInfoYet,
                    style: TextStyle(
                      color: Palette.sixtyPercWhite,
                      fontWeight: FontWeight.w500,
                      fontFamily:
                          Theme.of(context).textTheme.bodyLarge?.fontFamily,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                Strings.mostFreqGift,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontFamily: Theme.of(context).textTheme.bodyLarge?.fontFamily,
                ),
              ),
              const SizedBox(height: 8),
              RoundedColoredBox(
                height: 72,
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                bgColor: Palette.bgSecondary,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    Strings.none,
                    style: TextStyle(
                      color: Palette.sixtyPercWhite,
                      fontWeight: FontWeight.w500,
                      fontFamily:
                          Theme.of(context).textTheme.bodyLarge?.fontFamily,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
