import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import '../componentes/appBar.dart';
import '../componentes/nosso_drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'prevencao.dart';
import 'sobre.dart';

// Tela Home
class Home extends StatelessWidget {
  
  // Criando o controlador da para o PageView
	final _pageController = PageController();
	
  // Criação do webView para puxar o site
  final Widget siteWidget = WebView(
		initialUrl: 'https://covid.saude.gov.br',
		javascriptMode: JavascriptMode.unrestricted,
	);

  // verificar se o usuario está conectado com a internet
  Future<bool> _checarConexao() async {
  	var connectivityResult = await Connectivity().checkConnectivity();

  	
		if(connectivityResult == ConnectivityResult.wifi) return true;
		if(connectivityResult == ConnectivityResult.mobile) return true;

		return false;
  }

	@override
	Widget build(BuildContext context) {
		

    // Construção o corpo da tela
		return Scaffold(
      // Cor do fundo
			backgroundColor: Colors.white,

      // Menu superior (appBar)
			appBar: nossoAppBar(),
			
      // Menu esquerdo (drawer)
			drawer: nossoDrawer(context),

      // Corpo do aplicativo (body)
			body: PageView(
				controller: _pageController, // controlador
				physics: NeverScrollableScrollPhysics(), // não  rolar o scroll para baixo
				children: <Widget> [
					Scaffold(
						body: FutureBuilder<bool>(
							future: _checarConexao(), 
							builder: (context, snapshot) {
								if(snapshot.data == null) {
									return Center(child: CircularProgressIndicator());
								}

								if(snapshot.data == false) {
									return Center(
										child: Column(
											crossAxisAlignment: CrossAxisAlignment.center,
											mainAxisAlignment: MainAxisAlignment.center,
											children: <Widget> [
												Icon(Icons.signal_wifi_off, size: 40),
												Text(
													"Sem conexão com a internet.",
													style: TextStyle(
														color: Colors.grey[800],
													),
												)
											]
										)
									);
								}


								return siteWidget;
							}
						),
						floatingActionButton: _fab('https://covid.saude.gov.br')
					),
					Scaffold(
						body: Prevencao(),
						floatingActionButton: _fab('https://coronavirus.saude.gov.br')
					),
					Scaffold(
						body: About(),
						floatingActionButton: _fab('https://coronavirus.saude.gov.br')
					),
				]
			),
		
    );
	}

  // Método para a estrutura do botão flutuante
	Widget _fab(String url) {
		return FloatingActionButton(
			child: const Icon(Icons.public),
			onPressed: () {
				launch(url);
			}
		);
	}
}
