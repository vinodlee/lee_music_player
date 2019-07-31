import 'package:lee_music_player_example/directory_screen.dart';
import 'package:lee_music_player_example/example_animation_player.dart';
import 'package:lee_music_player_example/example_framing.dart';
import 'package:lee_music_player_example/example_layout_overlay.dart';
import 'package:lee_music_player_example/example_radial_drag.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return new MaterialApp(
			title: 'Fluttery Example',
			theme: new ThemeData(
				primarySwatch: Colors.blue,
			),
			routes: {
				'/': (context) => new Page(
					child: new DirectoryScreen(),
				),
				'/randomColorBlock': (context) => new Page(
					child: new RandomColorBlockExampleScreen(),
				),
				'/layoutOverlay': (context) => new Page(
					child: new LayoutOverlayExampleScreen(),
				),
				'/radialDrag': (context) => new Page(
					child: new RadialDragExampleScreen(),
				),
				'/animationPlayer': (context) => new Page(
					child: new AnimationPlayerExampleScreen(),
				),
			},
		);
	}
}

class Page extends StatefulWidget {
	
	final child;
	
	Page({
		this.child,
	});
	
	@override
	_PageState createState() => new _PageState();
}

class _PageState extends State<Page> {
	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			appBar: new AppBar(
				title: new Text('Fluttery'),
			),
			body: widget.child,
		);
	}
}