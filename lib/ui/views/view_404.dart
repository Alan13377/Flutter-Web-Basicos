import 'package:flutter/material.dart';
import 'package:flutter_bases/ui/widgets/custom_text_button.dart';

class View404 extends StatelessWidget {
  const View404({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "404",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "No se encontro la Pagina",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          CustomTextButton(
              onPressed: () => Navigator.pushNamed(context, "/stateful"),
              text: "Regresar",
              color: Colors.redAccent)
        ],
      ),
    );
  }
}
