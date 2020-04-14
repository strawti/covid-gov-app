import 'package:covidsaudegov/telas/sobreAplicativo.dart';
import 'package:flutter/material.dart';
import '../telas/prevencao.dart';
import '../telas/sobre.dart';
import '../telas/home.dart';

// Componentes

// Método para a estrutura do nosso drawer (menu esquerdo)
Widget nossoDrawer(context) {
  return Drawer(

    // Lista para os itens do Drawer
    child: ListView(children: <Widget>[
      Column(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              // Cabeçalho do Drawer
              DrawerHeader(
                child: Container(
                  child: Center(
                    child: Image.asset('images/logo-app.png'),
                  ),
                ),
              ),
              
              // Abaixo está os Cards do Drawer
              Card(
                color: Colors.blue[200],
                child: ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("Inicio"),
                  subtitle: const Text("Home"),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    // Método para ir para a página Home
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  }),
              ),
              Card(
                color: Colors.orange[100],
                child: ListTile(
                    leading: const Icon(Icons.book),
                    title: const Text("O que é coronavírus?"),
                    subtitle: const Text("E outros detalhes"),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
                    }),
              ),
              Card(
                color: Colors.green[200],
                child: ListTile(
                    leading: const Icon(Icons.swap_vertical_circle),
                    title: const Text("Prevenção"),
                    subtitle: const Text("Dicas de como prevenir"),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Prevencao()));
                    }),
              ),
              Card(
                color: Colors.purple[100],
                child: ListTile(
                    leading: const Icon(Icons.sentiment_very_satisfied),
                    title: const Text("Sobre esse Aplicativo"),
                    subtitle: const Text("Detalhes sobre esse App."),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SobreApp()));
                    }),
              ),
              Card(
                color: Colors.yellow[100],
                child: ListTile(
                    leading: const Icon(Icons.security),
                    title: const Text("Juntos combateremos!"),
                    subtitle: const Text("Proteja sua família. "),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      
                    }),
              ),
            ],
          ),

          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                // Logo da FTeam code 
                Container(
                  height: 250,
                  child: Image.asset(
                    "images/fteamcode.jpg",
                    semanticLabel: "Logo FTeam Code",
                    fit: BoxFit.fitHeight,
                  ),
                ),

                // Linha para mostrar o endereço de email
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                        "E-mail: fteamcodeapps@gmail.com",
                        style: TextStyle(fontSize: 15),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ]));
  }