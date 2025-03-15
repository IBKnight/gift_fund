import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gift_fund/gen/assets.gen.dart';
import 'package:gift_fund/src/common/palette.dart';
import 'package:gift_fund/src/common/strings.dart';

class RemindersScreen extends StatelessWidget {
  const RemindersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgPrimary,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).maybePop(),
            icon: SvgPicture.asset(
              Assets.icons.back.path,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            )),
        backgroundColor: Palette.bgPrimary,
        title: const Text(
          Strings.reminders,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      Assets.icons.empty.path,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      Strings.remindersHaventYet,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      Strings.uCanAddRemind,
                      style: TextStyle(
                        fontSize: 14,
                        color: Palette.sixtyPercWhite,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(vertical: 17),
                color: Palette.accentSecondaryBlue,
                borderRadius: BorderRadius.circular(20),
                child: const Text(Strings.addReminder),
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
