import 'package:flutter/material.dart';
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
				physics: NeverScrollableScrollPhysics(), // Mudando para não ficar rolar para baixo o scroll
				children: <Widget> [
					Scaffold(
						body: siteWidget,
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
