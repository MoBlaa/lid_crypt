#import "CryptPlugin.h"
#if __has_include(<crypt/crypt-Swift.h>)
#import <crypt/crypt-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "crypt-Swift.h"
#endif

@implementation CryptPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCryptPlugin registerWithRegistrar:registrar];
}
@end
