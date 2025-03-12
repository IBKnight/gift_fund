import 'package:flutter/cupertino.dart';

class RoundedColoredBox extends StatelessWidget {
  final EdgeInsets padding;
  final Color bgColor;
  final double? height;
  final double? width;
  final Widget child;
  const RoundedColoredBox({
    super.key,
    required this.padding,
    required this.bgColor,
    required this.child,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: ColoredBox(
          color: bgColor,
          child: Padding(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
