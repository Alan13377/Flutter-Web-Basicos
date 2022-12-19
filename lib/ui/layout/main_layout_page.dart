import 'package:flutter/material.dart';
import 'package:flutter_bases/ui/widgets/custom_menu.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget child;
  const MainLayoutPage({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const CustomMenu(),
            Spacer(),
            Expanded(
              child: Center(child: child),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
