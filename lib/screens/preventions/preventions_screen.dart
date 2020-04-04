import 'package:flutter/material.dart';


class PreventionsScreen extends StatelessWidget {

	final List<String> images = [
		'https://coronavirus.saude.gov.br/images/png/2020/marco/02/img1-maos.png',
		'https://coronavirus.saude.gov.br/images/png/2020/marco/02/img2-tosse.png',
		'https://coronavirus.saude.gov.br/images/png/2020/marco/02/img3-pessoas.png',
		'https://coronavirus.saude.gov.br/images/png/2020/marco/02/img4-janela.png',
		'https://coronavirus.saude.gov.br/images/png/2020/marco/02/img5-objetos.png',
	];

	@override
	Widget build(BuildContext context) {
		return ListView(
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
		);
	}


	Widget _preventionTile(String content, String url) {
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
