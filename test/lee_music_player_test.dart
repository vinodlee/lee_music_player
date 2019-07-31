import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lee_music_player/lee_music_player.dart';

void main() {
  const MethodChannel channel = MethodChannel('lee_music_player');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('How To: Generate Random Color', () {
	  final randomColor = RandomColor.next();
	  assert(randomColor != null);
	  assert(randomColor.alpha == 0xFF);
  });
}
