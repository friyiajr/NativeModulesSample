//
//  SampleModule.m
//  GoingNative
//
//  Created by Daniel Friyia on 2021-09-23.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(Clock, RCTEventEmitter)
  RCT_EXTERN_METHOD(
      getCurrentTime:(RCTPromiseResolveBlock)resolve
            rejecter:(RCTPromiseRejectBlock)reject
  )
  RCT_EXTERN_METHOD(dispatchEventEverySecond)
@end
