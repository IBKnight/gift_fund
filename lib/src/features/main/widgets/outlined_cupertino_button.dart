import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutlinedCupertinoButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Border borders;
  const OutlinedCupertinoButton({
    super.key,
    required this.onPressed,
    required this.borders,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: borders,
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
          child: child,
        ),
      ),
    );
  }
}
