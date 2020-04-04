import 'package:flutter/material.dart';
import 'package:covidsaudegov/commum/drawer_tile.dart';



class CustomDrawer extends StatelessWidget {


	CustomDrawer(this.pageController);

	PageController pageController = PageController();


	@override
	Widget build(BuildContext context) {
		return Drawer(
			child: Stack(
				children: <Widget> [
					ListView(
						children: <Widget> [
							const SizedBox(height: 30,),
							Padding(
								padding: const EdgeInsets.symmetric(horizontal: 15),
								child: Image.network('https://covid.saude.gov.br/assets/imgs/logo-app.png'),
							),
							const SizedBox(height: 30,),
							DrawerTile(Icons.home, "Inicio", pageController, 0, "blue"),
							DrawerTile(Icons.list, "Prevenção", pageController, 1, "green"),
							DrawerTile(Icons.help, "O que é coronavírus?", pageController, 2, "yellow"),
						]
					),
					Align(
						alignment: Alignment.bottomCenter,
						child: const DrawerHeader(
		          decoration: BoxDecoration(
		            color: Colors.blue,
		            image: const DecorationImage(
					      	image: const AssetImage(
					      		'images/fteamcode.jpg'
					      	),
					      	fit: BoxFit.cover,
					    	),
		          ),
		          child: Align(
		          	alignment: Alignment.bottomLeft,
		          	child: const Text(
			          	'fteamcode@gmail.com',
			          	textAlign: TextAlign.end,
			          	style: const TextStyle(
			          		color: Colors.black87,
			          		fontSize: 15,
			          		fontWeight: FontWeight.w500,
			          	)
			          ),
		          ),
		        ),
					),
				]
			),
		);
	}
}
