import 'package:flutter/widgets.dart';
import 'package:lee_music_player/lee_music_player.dart';
import 'package:lee_music_player/src/_audio_visualizer.dart';


class Visualizer extends StatefulWidget {
	
	final Function(BuildContext context, List<int> fft) builder;
	
	Visualizer({
		this.builder,
	});
	
	@override
	_VisualizerState createState() => new _VisualizerState();
}

class _VisualizerState extends State<Visualizer> {
	
	AudioVisualizer visualizer;
	List<int> fft = const [];
	
	@override
	void initState() {
		super.initState();
		visualizer = FlutteryAudio.audioVisualizer()
			..activate()
			..addListener(
				fftCallback: (List<int> samples) {
					print('Got FFT samples: $samples');
					setState(() => fft = samples);
				}
			);
	}
	
	@override
	void dispose() {
		visualizer.dispose();
		super.dispose();
	}
	
	@override
	Widget build(BuildContext context) {
		return widget.builder(context, fft);
	}
}