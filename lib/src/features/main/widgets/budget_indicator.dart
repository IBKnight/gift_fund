import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gift_fund/src/common/palette.dart';

class BudgetIndicator extends StatelessWidget {
  final int budget;
  final int currentBudget;
  const BudgetIndicator({
    super.key,
    required this.budget,
    required this.currentBudget,
  });

  @override
  Widget build(BuildContext context) {
    final double percentage = currentBudget / budget;
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 100, // Увеличиваем размер
          height: 100,
          child: CircularProgressIndicator(
            backgroundColor: Palette.circularIndicatorBg,
            strokeWidth: 12, // Толщина линии
            value: (currentBudget > 0) ? percentage : 1,
            color: (currentBudget > 0)
                ? Palette.accentGreen
                : Palette.accentRed, // Цвет
          ),
        ),
        // Текст в центре
        Text(
          "\$ $currentBudget",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
