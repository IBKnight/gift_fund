import 'package:flutter/material.dart';
import 'package:gift_fund/src/features/main/screens/budget_set_screen.dart';
import 'package:gift_fund/src/features/main/screens/main_screen.dart';
import 'package:gift_fund/src/features/reminders/reminders_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gift Fund',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/": (ctx) => const MainScreen(),
        "/reminders": (ctx) => const RemindersScreen(),
        "/setBudget": (ctx) => const BudgetSetScreen(),
      },
    );
  }
}
