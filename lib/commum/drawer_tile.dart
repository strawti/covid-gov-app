import 'package:flutter/material.dart';



class DrawerTile extends StatelessWidget {

	final IconData icon;
	final String text;
	final PageController controller;
	final int page;
	final String color;

	DrawerTile(this.icon, this.text, this.controller, this.page, this.color);


	Color _getColorBackground() {

		if(color == 'blue') {
			if(controller.page.round() == page) {
				return Colors.blue[300];

			} else {
				return Colors.blue[50];

			}

		} else if(color == 'green') {
			if(controller.page.round() == page){
				return Colors.green[300];

			} else {
				return Colors.green[50];

			}

		} else if(color == "yellow") {
			if(controller.page.round() == page) {
				return Colors.yellow[800];

			} else {
				return Colors.orange[50];
				
			}
		}
	}

	Color _getColorTextAndIcon() {
		return controller.page.round() == page ? Colors.white : Colors.grey;
	}


	@override
	Widget build(BuildContext context) {
		return Card(
			color:  _getColorBackground(), 
			child: ListTile(
				onTap: () {
					Navigator.of(context).pop();
					controller.jumpToPage(page);
				},
				title: Text(
					text, 
					style: TextStyle(
						color: _getColorTextAndIcon(),
						fontWeight: FontWeight.w500,
						fontSize: 18,
					),
				),
				leading: Icon(icon, 
					color: _getColorTextAndIcon()),
				trailing: Icon(Icons.arrow_forward, 
					color: _getColorTextAndIcon())
			),
		);
	}
}
