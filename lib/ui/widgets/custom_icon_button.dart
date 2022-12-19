import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData icon;
  final Color backgroundColor;
  final Color color;
  const CustomIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.backgroundColor,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Icon(icon),
      style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          backgroundColor: backgroundColor,
          foregroundColor: color),
    );
  }
}
