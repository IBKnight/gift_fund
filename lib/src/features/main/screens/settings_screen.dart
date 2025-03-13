import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gift_fund/src/common/palette.dart';
import 'package:gift_fund/src/common/strings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgPrimary,
      appBar: AppBar(
        backgroundColor: Palette.bgPrimary,
        title: const Text(
          Strings.settings,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 32),
            OutlinedCupertinoButton(
              text: Strings.privacyPolicy,
              onPressed: () {},
            ),
            const SizedBox(height: 12),
            OutlinedCupertinoButton(
              text: Strings.termsOfUse,
              onPressed: () {},
            ),
            const SizedBox(height: 12),
            OutlinedCupertinoButton(
              text: Strings.support,
              onPressed: () {},
            ),
            const SizedBox(height: 12),
            OutlinedCupertinoButton(
              text: Strings.share,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class OutlinedCupertinoButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const OutlinedCupertinoButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Palette.accentSecondaryBlue, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        width: double.infinity,
        child: CupertinoButton(
          alignment: Alignment.centerLeft,
          color: Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 12),
          borderRadius: BorderRadius.circular(20),
          onPressed: onPressed,
          child: Text(text),
        ),
      ),
    );
  }
}
