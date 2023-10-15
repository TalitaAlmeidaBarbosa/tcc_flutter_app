import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:tcc_flutter/PlantButton.dart';

class PlantButtonsPage extends StatefulWidget {
  @override
  _PlantButtonsPageState createState() => _PlantButtonsPageState();
}

class _PlantButtonsPageState extends State<PlantButtonsPage> {
  int selectedButtonId = -1;

  void _handleButtonPress(int id) {
    setState(() {
      selectedButtonId = id; // aqui criamos uma seleção pra botões pressionados
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Configurações',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            PlantButton(
              imageUrl: 'img/samambaia.jpeg',
              plantName: 'Samambaia',
              id: 1,
              isSelected: selectedButtonId == 1,
              onPressed: _handleButtonPress,
            ),
            PlantButton(
              imageUrl: 'img/suculenta.jpeg',
              plantName: 'Suculenta',
              id: 2,
              isSelected: selectedButtonId == 2,
              onPressed: _handleButtonPress,
            ), // suculenta
            PlantButton(
              imageUrl: 'img/salsinha.jpeg',
              plantName: 'Salsinha',
              id: 3,
              isSelected: selectedButtonId == 3,
              onPressed: _handleButtonPress,
            ), // Salsinha
            PlantButton(
              imageUrl: 'img/orquidea.jpeg',
              plantName: 'Orquídea',
              id: 4,
              isSelected: selectedButtonId == 4,
              onPressed: _handleButtonPress,
            ), // Orquidea
            PlantButton(
              imageUrl: 'img/cebolinha.jpeg',
              plantName: 'Cebolinha',
              id: 5,
              isSelected: selectedButtonId == 5,
              onPressed: _handleButtonPress,
            ), // Cebolinha
            PlantButton(
              imageUrl: 'img/alface.jpeg',
              plantName: 'Alface',
              id: 6,
              isSelected: selectedButtonId == 6,
              onPressed: _handleButtonPress,
            ), // alface
          ],
        ),
      ),
    );
  }
}
