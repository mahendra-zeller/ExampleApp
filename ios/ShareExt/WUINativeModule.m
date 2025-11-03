//
//  WUINativeModule.m
//  WUIExtension
//
//  Created by Ajay Grover on 03/04/25.
//

#import "WUINativeModule.h"
#import <PassKit/PassKit.h>
//@import Sentry;

@implementation WUINativeModule

RCT_EXPORT_MODULE(WUINativeModule);

RCT_EXPORT_METHOD(completeRequest:(NSString *)completed) {
    ExtensionContextProviderImpl *provider = [ExtensionContextProviderImpl shared];

//  if(!self.completionHandler) {
//    SentryBreadcrumb *crumb = [[SentryBreadcrumb alloc] init];
//    crumb.level = kSentryLevelInfo;
//    crumb.category = @"WalletUIExtension";
//    crumb.message = @"completion handler not found";
//    [SentrySDK addBreadcrumb:crumb];
    
//    NSError *error = [NSError errorWithDomain:@"walletUIExtension"
//                                         code:400
//                                     userInfo:@{
//      NSLocalizedDescriptionKey: @"Completion handler not found!"
//    }];
    
//    [SentrySDK captureError:error];
    
//  }
  
  if ([completed isEqualToString:@"true"]) {
    [provider completeRequest];
//      resolve("true");
//    SentryBreadcrumb *crumb = [[SentryBreadcrumb alloc] init];
//    crumb.level = kSentryLevelInfo;
//    crumb.category = @"WalletUIExtension";
//    crumb.message = @"Result authorized.";
//    [SentrySDK addBreadcrumb:crumb];


    
    
    
//    self.completionHandler(result);
  } else {
//    SentryBreadcrumb *crumb = [[SentryBreadcrumb alloc] init];
//    crumb.level = kSentryLevelInfo;
//    crumb.category = @"WalletUIExtension";
//    crumb.message = @"Result Canceled.";
//    [SentrySDK addBreadcrumb:crumb];
    
    // PKIssuerProvisioningExtensionAuthorizationResult result = PKIssuerProvisioningExtensionAuthorizationResultCanceled;
    
    
//    NSError *error = [NSError errorWithDomain:@"walletUIExtension"
//                                         code:401
//                                     userInfo:@{
//      NSLocalizedDescriptionKey: @"WALLETEXT: Authorization Failed!"
//    }];
//    
//    [SentrySDK captureError:error];
//    self.completionHandler(result);
    [provider completeRequest];
  }
  
  
}

@end
