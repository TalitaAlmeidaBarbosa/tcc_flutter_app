//import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter_application_1/PlantButtonsPage.dart';

// cosntriumos uma lista simples para buscar as imagens e nomes das plantas
class PlantButton extends StatelessWidget { 
  final String imageUrl;
  final String plantName;
  final int id;
  final bool isSelected;
  final ValueChanged<int> onPressed;

  PlantButton({
    required this.imageUrl,   // a imagem
    required this.plantName,  // o nome
    required this.id,         // id do botão
    required this.isSelected, // selecionado
    required this.onPressed,  // pressionado
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
          // inicialmente pensado para poder conectar o esp32 ao bluetooth
          //
        },
        style: ElevatedButton.styleFrom( // aqui definimos o estilo de cores do botão 
          primary: isSelected // quando selecionado alterar sua cor para um verde mais escuro
              ? Color.fromARGB(255, 118, 221, 55)
              : const Color.fromARGB(255, 52, 148, 55),
        ),
        child: Column(
          children: [ // dentro do children colocamos a estrutura dos botões
            Expanded(
              child: FractionallySizedBox( // aqui definimos o formato da imagem dentro do botão
                widthFactor: 0.9,
                heightFactor: 0.9,
                child: Image.asset( // pegamos as imagens da pasta img e colocamos num conteiner
                  imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 1.0), // tamanho da altura
            Text( // abaixo da imagem colocamos os nomes respectivos as imagens das plantas
              plantName,
              style: TextStyle( // definimos o estilo do texto
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
