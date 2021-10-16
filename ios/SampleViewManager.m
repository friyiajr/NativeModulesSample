//
//  SampleViewManager.m
//  GoingNative
//
//  Created by Daniel Friyia on 2021-10-09.
//

#import <Foundation/Foundation.h>
#import <React/RCTViewManager.h>
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(SampleComponentManager, RCTViewManager)
  RCT_EXPORT_VIEW_PROPERTY(myColor, NSString)
  RCT_EXPORT_VIEW_PROPERTY(onUpdate, RCTDirectEventBlock)
@end
