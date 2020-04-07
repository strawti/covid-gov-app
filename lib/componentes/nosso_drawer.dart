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
                    child: Image.network('https://covid.saude.gov.br/assets/imgs/logo-app.png'),
                  ),
                ),
              ),
              
              // Abaixo está os Cards do Drawer
              Card(
                color: Colors.blue[200],
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Inicio"),
                  subtitle: Text("Home"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Método para ir para a página Home
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  }),
              ),
              Card(
                color: Colors.orange[100],
                child: ListTile(
                    leading: Icon(Icons.book),
                    title: Text("O que é coronavírus?"),
                    subtitle: Text("E outros detalhes"),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
                    }),
              ),
              Card(
                color: Colors.green[200],
                child: ListTile(
                    leading: Icon(Icons.swap_vertical_circle),
                    title: Text("Prevenção"),
                    subtitle: Text("Dicas de como prevenir"),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Prevencao()));
                    }),
              ),
              Card(
                color: Colors.purple[100],
                child: ListTile(
                    leading: Icon(Icons.sentiment_very_satisfied),
                    title: Text("Sobre esse Aplicativo"),
                    subtitle: Text("Detalhes sobre esse App."),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SobreApp()));
                    }),
              ),
              Card(
                color: Colors.yellow[100],
                child: ListTile(
                    leading: Icon(Icons.security),
                    title: Text("Juntos combateremos!"),
                    subtitle: Text("Proteja sua família. "),
                    trailing: Icon(Icons.arrow_forward),
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
                    "lib/imagens/fteamcode.jpg",
                    semanticLabel: "Logo FTeam Code",
                    fit: BoxFit.fitHeight,
                  ),
                ),

                // Linha para mostrar o endereço de email
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
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