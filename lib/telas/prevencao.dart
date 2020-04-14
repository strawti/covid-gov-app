import 'package:flutter/material.dart';
import '../componentes/appBar.dart';

// Tela Prevenção
class Prevencao extends StatelessWidget {

  // Lista para os links das imagens
	final List<String> images = [
		'images/img1-maos.png',
		'images/img2-tosse.png',
		'images/img3-pessoas.png',
		'images/img4-janela.png',
		'images/img5-objetos.png',
	];

  // Método para construir o corpo da tela
	@override
	Widget build(BuildContext context) {
		return Scaffold(
      // Barra superior (appBar)
      appBar: nossoAppBar(), 

      // Corpo do aplicativo (body)
      body: ListView(
		    children: <Widget> [
		  		const ListTile(
		  			title: const Text('FONTE:'),
		  			subtitle: const Text("https://coronavirus.saude.gov.br/")
		  		),
		  		_preventionTile(
		  			'Lave as mãos com água e sabão ou use álcool em gel.', 
		  			images[0]
		  		),
		  		_preventionTile(
		  			'Cubra o nariz e boca ao espirrar ou tossir.', 
		  			images[1]
		  		),
		  		_preventionTile(
		  			'Evite aglomerações se estiver doente.', 
		  			images[2]
		  		),
		  		_preventionTile(
		  			'Mantenha os ambientes bem ventilados.', 
		  			images[3]
		  		),
		  		_preventionTile(
		  			'Não compartilhe objetos pessoais.', 
		  			images[4]
		  		),
		  	]
		  ),
		
    );
	}

  // Método privado para retornar o Card 
	Widget _preventionTile(String content, String url) { 
		// Passando como parâmetros o conteudo (content) e o link da imagem (url)
		return Card(
      child: Padding(
      	padding: const EdgeInsets.all(10),
      	child: ListTile(
	        title: Text(content),
	        leading: Image.asset(url)
	      ),
      ),
    );
	}

}
