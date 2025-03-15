import 'package:flutter/material.dart';
import 'package:gift_fund/src/common/palette.dart';
import 'package:gift_fund/src/common/strings.dart';
import 'package:gift_fund/src/features/main/widgets/outlined_cupertino_button.dart';

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
              borders: Border.all(
                color: Palette.accentSecondaryBlue,
                width: 2,
              ),
              onPressed: () {},
              child: const Text(Strings.privacyPolicy),
            ),
            const SizedBox(height: 12),
            OutlinedCupertinoButton(
              borders: Border.all(
                color: Palette.accentSecondaryBlue,
                width: 2,
              ),
              onPressed: () {},
              child: const Text(Strings.termsOfUse),
            ),
            const SizedBox(height: 12),
            OutlinedCupertinoButton(
              borders: Border.all(
                color: Palette.accentSecondaryBlue,
                width: 2,
              ),
              onPressed: () {},
              child: const Text(Strings.support),
            ),
            const SizedBox(height: 12),
            OutlinedCupertinoButton(
              borders: Border.all(
                color: Palette.accentSecondaryBlue,
                width: 2,
              ),
              onPressed: () {},
              child: const Text(Strings.share),
            ),
          ],
        ),
      ),
    );
  }
}
