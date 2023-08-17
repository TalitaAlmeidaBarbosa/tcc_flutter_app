//import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter_application_1/PlantButtonsPage.dart';

class PlantButton extends StatelessWidget {
  final String imageUrl;
  final String plantName;
  final int id;
  final bool isSelected;
  final ValueChanged<int> onPressed;

  PlantButton({
    required this.imageUrl,
    required this.plantName,
    required this.id,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          onPressed(
              id); // chama a função de callback onPressed passando o id do botão
          //
          // lógica do botão
          //
        },
        style: ElevatedButton.styleFrom(
          primary: isSelected
              ? Color.fromARGB(255, 118, 221, 55)
              : const Color.fromARGB(255, 52, 148, 55),
        ),
        child: Column(
          children: [
            Expanded(
              child: FractionallySizedBox(
                widthFactor: 0.9,
                heightFactor: 0.9,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 1.0),
            Text(
              plantName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
