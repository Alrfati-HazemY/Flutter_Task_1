import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {this.borderColor,
      required this.bgColor,
      required this.size,
      required this.child,
      super.key});

  final Color bgColor;
  final Color? borderColor;
  final Widget child;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: borderColor ?? bgColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        fixedSize: size,
        backgroundColor: bgColor,
      ),
      child: child,
    );
  }
}
