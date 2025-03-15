import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gift_fund/gen/assets.gen.dart';
import 'package:gift_fund/src/common/palette.dart';
import 'package:gift_fund/src/common/strings.dart';
import 'package:gift_fund/src/common/widgets/rounded_colored_box.dart';
import 'package:gift_fund/src/features/main/widgets/budget_indicator.dart';
import 'package:gift_fund/src/features/main/widgets/outlined_cupertino_button.dart';
import 'package:intl/intl.dart';

class HolidayPlannersScreen extends StatefulWidget {
  const HolidayPlannersScreen({
    super.key,
  });

  @override
  State<HolidayPlannersScreen> createState() => _HolidayPlannersScreenState();
}

class _HolidayPlannersScreenState extends State<HolidayPlannersScreen> {
  final totalBudget = 0;
  final reminderCount = 5;
  final expensions = [];

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
                  BudgetIndicator(
                    budget: totalBudget,
                    expenses: 0,
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
                        child: Text(totalBudget == 0
                            ? Strings.setBudget
                            : Strings.editBudget),
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/setBudget'),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            CupertinoButton(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              color: reminderCount == 0
                  ? Palette.bgSecondary
                  : Palette.accentSecondaryBlue,
              borderRadius: BorderRadius.circular(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      '${Strings.urReminders} ${reminderCount != 0 ? '($reminderCount)' : ''}'),
                  SvgPicture.asset(Assets.icons.arrowRight.path),
                ],
              ),
              onPressed: () => Navigator.of(context).pushNamed('/reminders'),
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
            expensions.isEmpty
                ? Center(
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
                  )
                : ListView.builder(
                    itemBuilder: (context, index) {
                      // return EventHistoryTile(
                      //   title: 'Jimmy birthday',
                      //   cost: '1600',
                      //   date: DateTime(2025, 3),
                      // );
                      //TODO: сделать отображение тайлов
                    },
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

class EventHistoryTile extends StatelessWidget {
  final String title;
  final String cost;
  final DateTime date;
  const EventHistoryTile({
    super.key,
    required this.title,
    required this.cost,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedCupertinoButton(
      onPressed: () {},
      borders: Border.all(color: Palette.primaryBlue, width: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16),
              ),
              RichText(
                text: TextSpan(
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                          text: '\$',
                          style: TextStyle(color: Palette.sixtyPercWhite)),
                      TextSpan(text: cost),
                    ]),
              ),
            ],
          ),
          Text(
            DateFormat('MMMM d, yyyy').format(date),
            style: TextStyle(color: Palette.sixtyPercWhite, fontSize: 12),
          )
        ],
      ),
    );
  }
}
