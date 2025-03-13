import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gift_fund/gen/assets.gen.dart';
import 'package:gift_fund/src/common/palette.dart';
import 'package:gift_fund/src/common/strings.dart';

class RecepientsScreen extends StatelessWidget {
  const RecepientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgPrimary,
      appBar: AppBar(
        actions: [
          //TODO: Add iconbutton
        ],
        backgroundColor: Palette.bgPrimary,
        title: const Text(
          Strings.recipOfGifts,
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
            
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, 
                  crossAxisAlignment:
                      CrossAxisAlignment.center, 
                  children: [
                    SvgPicture.asset(Assets.icons.empty.path),
                    const SizedBox(
                        height: 16), 
                    const Text(
                      Strings.recListEmpty,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8), 
                    Text(
                      Strings.uCanAddBirth,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Palette.sixtyPercWhite,
                        fontWeight: FontWeight.w500,
                      ),
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
                child: const Text(Strings.addRec),
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
