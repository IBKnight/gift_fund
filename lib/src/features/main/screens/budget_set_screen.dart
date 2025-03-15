import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gift_fund/gen/assets.gen.dart';
import 'package:gift_fund/src/common/palette.dart';
import 'package:gift_fund/src/common/strings.dart';

class BudgetSetScreen extends StatefulWidget {
  const BudgetSetScreen({super.key});

  @override
  State<BudgetSetScreen> createState() => _BudgetSetScreenState();
}

class _BudgetSetScreenState extends State<BudgetSetScreen> {
  late final _budgetController = TextEditingController();

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
          Strings.setBudget,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                Strings.enterBudget,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                        child: Text(
                      '\$',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: _budgetController,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      cursorColor: Colors.white,
                      keyboardType: const TextInputType.numberWithOptions(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                          hintText: Strings.budgetHint,
                          hintStyle: TextStyle(color: Palette.sixtyPercWhite),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                  )
                ],
              ),
              const Expanded(child: SizedBox()),
              SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  padding: const EdgeInsets.symmetric(vertical: 17),
                  color: Palette.accentSecondaryBlue,
                  borderRadius: BorderRadius.circular(20),
                  child: const Text(Strings.setB),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
