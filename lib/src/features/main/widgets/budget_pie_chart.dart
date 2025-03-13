import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gift_fund/src/common/palette.dart';

class BudgetPieChart extends StatelessWidget {
  final double totalBudget; // Общий бюджет
  final double spentBudget; // Потраченный бюджет

  const BudgetPieChart({
    super.key,
    required this.totalBudget,
    required this.spentBudget,
  });

  @override
  Widget build(BuildContext context) {
    var chartRadius = 100.0;

    final bool isOverBudget = spentBudget > totalBudget;

    // Данные для Pie Chart
    final List<PieChartSectionData> pieChartSections = (totalBudget == 0)
        ? [
            PieChartSectionData(
              value: 1,
              color: Palette.circularIndicatorBg,
              title: '',
              radius: chartRadius,
            )
          ]
        : [
            PieChartSectionData(
              value: isOverBudget ? totalBudget : spentBudget,
              color: Palette.accentRed,
              title: '',
              radius: chartRadius,
            ),
            // Оставшийся бюджет (зелёный, если не превышен)
            if (!isOverBudget)
              PieChartSectionData(
                value: totalBudget - spentBudget,
                color: Palette.accentGreen,
                title: '',
                radius: chartRadius,
              ),
          ];

    return SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PieChart(
            PieChartData(
              sections: pieChartSections,
              centerSpaceRadius: 0,
              sectionsSpace: 0,
              startDegreeOffset: 170,
            ),
          ),
          // Текст в центре PieChart
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${totalBudget == 0 ? 0 : (100 - (spentBudget / totalBudget * 100)).toStringAsFixed(1)}%', // Процент с одним знаком после запятой
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
