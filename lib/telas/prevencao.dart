import 'package:flutter/material.dart';
import '../componentes/appBar.dart';

// Tela Prevenção
class Prevencao extends StatelessWidget {

  // Lista para os links das imagens
	final List<String> images = [
		'https://coronavirus.saude.gov.br/images/png/2020/marco/02/img1-maos.png',
		'https://coronavirus.saude.gov.br/images/png/2020/marco/02/img2-tosse.png',
		'https://coronavirus.saude.gov.br/images/png/2020/marco/02/img3-pessoas.png',
		'https://coronavirus.saude.gov.br/images/png/2020/marco/02/img4-janela.png',
		'https://coronavirus.saude.gov.br/images/png/2020/marco/02/img5-objetos.png',
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
		  			title: Text('FONTE:'),
		  			subtitle: Text("https://coronavirus.saude.gov.br/")
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
	Widget _preventionTile(String content, String url) { // Passando como parâmetros o conteudo (content) e o link da imagem (url)
		return Card(
      child: Padding(
      	padding: const EdgeInsets.all(10),
      	child: ListTile(
	        title: Text(content),
	        leading: Image.network(url)
	      ),
      ),
    );
	}

}
