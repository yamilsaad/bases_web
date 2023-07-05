import 'package:bases_web/UI/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Error 404',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            CustomFlatButton(
                text: 'Regresar',
                color: Colors.red,
                onPressed: () => Navigator.pushNamed(context, '/stateful'))
          ],
        ),
      ),
    );
  }
}
