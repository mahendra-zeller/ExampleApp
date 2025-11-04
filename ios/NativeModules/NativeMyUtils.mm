//
//  NativeMyUtils.m
//  ExampleApp
//
//  Created by Farhan on 04/11/25.
//

#import "NativeMyUtils.h"

@implementation NativeMyUtils

RCT_EXPORT_MODULE(RNMyUtils)

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeMyUtilsSpecJSI>(params);
}

- (void)hello { 
    NSLog(@"Hello from NativeMyUtils!");
}

@end
