import 'package:bases_web/UI/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  get color => Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
              text: 'Contador Stateful', color: color, onPressed: () {}),
          SizedBox(width: 10),
          CustomFlatButton(
              text: 'Contador Provider', color: color, onPressed: () {}),
          SizedBox(width: 10),
          CustomFlatButton(text: 'Otra Página', color: color, onPressed: () {}),
        ],
      ),
    );
  }
}
