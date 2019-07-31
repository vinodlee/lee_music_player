import 'package:flutter/material.dart';
import 'package:lee_music_player/lee_music_player.dart';

class RandomColorBlockExampleScreen extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return new Center(
			child: new Column(
				mainAxisAlignment: MainAxisAlignment.start,
				children: [
					// Top Bar
					new RandomColorBlock(
						width: double.infinity,
						height: 75.0,
						child: new Center(
							child: new Container(
								padding: const EdgeInsets.all(15.0),
								color: Colors.white,
								child: new Text('Random Block Color'),
							),
						),
					),
					
					// Square below top Bar
					new RandomColorBlock(
						width: double.infinity,
						child: new AspectRatio(
							aspectRatio: 1.0,
							child: new Center(
								child: new Container(
									padding: const EdgeInsets.all(15.0),
									color: Colors.white,
									child: new Text('Random colors live across hot reloads.'),
								),
							),
						),
					),
					
					// Bottom bar
					new Expanded(
						child: new RandomColorBlock(
							width: double.infinity,
						),
					),
				],
			),
		);
	}
}