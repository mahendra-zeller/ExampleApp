#import <Foundation/Foundation.h>

@protocol ExtensionContextProvider <NSObject>
- (NSExtensionContext *)getExtensionContext;
@end

@interface ExtensionContextProviderImpl : NSObject <ExtensionContextProvider>
+ (instancetype)shared;
- (void)setExtensionContext:(NSExtensionContext *)context;
- (void)completeRequest;
@end
