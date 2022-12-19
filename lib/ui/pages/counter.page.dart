import 'package:flutter/material.dart';
import 'package:flutter_bases/ui/widgets/custom_icon_button.dart';
import 'package:flutter_bases/ui/widgets/custom_menu.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomMenu(),
          Spacer(),
          Text(
            "Contador StateFul",
            style: TextStyle(fontSize: 20),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Contador : $counter",
                style: const TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //*Custom Button
              CustomIconButton(
                onPressed: (() => setState(() {
                      counter = counter + 1;
                    })),
                icon: Icons.add,
                backgroundColor: Colors.greenAccent,
                color: Colors.white,
              ),
              SizedBox(
                width: 30,
              ),
              //*CustomButton
              CustomIconButton(
                onPressed: (() => setState(() {
                      counter = counter - 1;
                    })),
                icon: Icons.remove,
                backgroundColor: Colors.redAccent,
                color: Colors.white,
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
