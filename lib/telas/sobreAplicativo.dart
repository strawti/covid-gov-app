import 'package:covidsaudegov/componentes/appBar.dart';
import 'package:flutter/material.dart';

class SobreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra Superior (appBar)
      appBar: nossoAppBar(),

      // Corpo do aplicativo (body)
      body: Container(
        width: MediaQuery.of(context).size.width,
  
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Text("Sobre esse Aplicativo", style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
