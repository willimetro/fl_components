import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
	const CardScreen({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Card Widget'),
			),
			body: ListView(
				padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
				children: const [
					CustomCardType1(),
					SizedBox(height: 20),
					CustomCardType2(imageUrl: 'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg', name: 'Un hermoso paisaje'),
					SizedBox(height: 20),
					CustomCardType2(imageUrl: 'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg', name: 'Esta es una imagen'),
					SizedBox(height: 20),
					CustomCardType2(imageUrl: 'https://chiledescentralizado.cl/wp-content/uploads/2016/03/landscape-04.jpg'),
					SizedBox(height: 100),
				],
			)
		);
	}
}