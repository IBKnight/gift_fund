import 'package:flutter/material.dart';
import 'package:gift_fund/src/common/palette.dart';

class BudgetIndicator extends StatelessWidget {
  final int budget;
  final int expenses;
  const BudgetIndicator({
    super.key,
    required this.budget,
    required this.expenses,
  });

  @override
  Widget build(BuildContext context) {
    final double percentage = (budget != 0) ? expenses / budget : 0;
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: CircularProgressIndicator(
            strokeWidth: 12, // Толщина линии
            value: (expenses > 0) ? percentage : 1,
            color: budget == 0
                ? Palette.circularIndicatorBg
                : (budget - expenses > 0)
                    ? Palette.accentGreen
                    : Palette.accentRed, // Цвет
          ),
        ),
        // Текст в центре
        Text(
          "\$ ${drawBalance()}",
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  int drawBalance() {
    if (budget == 0) return 0;

    return budget - expenses;
  }
}
