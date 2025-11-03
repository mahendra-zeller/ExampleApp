#import "ExtensionContextProvider.h"

@interface ExtensionContextProviderImpl ()
@property (nonatomic, strong) NSExtensionContext *extensionContext;
@end

@implementation ExtensionContextProviderImpl

+ (instancetype)shared {
  static ExtensionContextProviderImpl *instance = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
  });
  return instance;
}

- (NSExtensionContext *)getExtensionContext {
  return _extensionContext;
}

- (void)setExtensionContext:(NSExtensionContext *)context {
  // Defensive assignment — crash guard
  if (_extensionContext == context) return;
  _extensionContext = context;
}

- (void)completeRequest {
  if (_extensionContext) {
    [_extensionContext completeRequestReturningItems:nil completionHandler:nil];
  } else {
    NSLog(@"⚠️ No extension context available to complete request");
  }
}

@end
