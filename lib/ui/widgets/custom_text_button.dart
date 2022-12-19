import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color? backgroundColor;
  final Color color;
  const CustomTextButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = const Color(0xfffafafa),
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
      style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          backgroundColor: backgroundColor,
          foregroundColor: color),
    );
  }
}
