#import "LeeMusicPlayerPlugin.h"
#import <lee_music_player/lee_music_player-Swift.h>

@implementation LeeMusicPlayerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLeeMusicPlayerPlugin registerWithRegistrar:registrar];
}
@end
