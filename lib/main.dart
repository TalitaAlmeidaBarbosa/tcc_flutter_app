import 'package:flutter/material.dart';
import 'package:tcc_flutter/PlantButtonsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sistema de Irrigação',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PlantButtonsPage(),
    );
  }
}
