import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:covidsaudegov/screens/preventions/preventions_screen.dart';
import 'package:covidsaudegov/screens/aboutcovid/about_screen.dart';
import 'package:covidsaudegov/commum/custom_drawer.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeScreen extends StatelessWidget {

	final _pageController = PageController();
	final Widget siteWidget = WebView(
		initialUrl: 'https://covid.saude.gov.br',
		javascriptMode: JavascriptMode.unrestricted,
	);

	@override
	Widget build(BuildContext context) {

		return Scaffold(
			backgroundColor: Colors.white,
			appBar: AppBar(
				backgroundColor: Colors.white,
				elevation: 0,
				iconTheme: const IconThemeData(color: Colors.blue),
			),
			drawer: CustomDrawer(_pageController),
			body: PageView(
				controller: _pageController,
				physics: NeverScrollableScrollPhysics(),
				children: <Widget> [
					Scaffold(
						body: siteWidget,
						floatingActionButton: _fab('https://covid.saude.gov.br')
					),
					Scaffold(
						body: PreventionsScreen(),
						floatingActionButton: _fab('https://coronavirus.saude.gov.br')
					),
					Scaffold(
						body: AboutScreen(),
						floatingActionButton: _fab('https://coronavirus.saude.gov.br')
					),
				]
			),
		);
	}

	Widget _fab(String url) {
		return FloatingActionButton(
			child: const Icon(Icons.public),
			onPressed: () {
				launch(url);
			}
		);
	}
}
