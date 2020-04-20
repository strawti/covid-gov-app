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
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            const Text("Esse aplicativo foi desenvolvido pela equipe FTeam Code.\nÉ um aplicativo simples que puxa o site do ministério da saúde com os dados estatísticos do corona vírus Covid-19, além disso ele pega informações úteis de fontes seguras também do governo.\nA intenção é que pessoas que não sabem mexer direito na internet e pesquisar pelo site oficial do Ministério da Saúde tenha em mãos todos os dados importantes com um único clique, e fique informado com os dados oficiais sobre o status desse vírus.\nÉ um aplicativo tudo em um, feito pensando na sua saúde e na do próximo.", 
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
