//
//  CalendarTest.m
//  RNPOC
//
//  Created by Ronak Kothari on 11/04/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "CalendarTest.h"
#import <React/RCTLog.h>

@implementation CalendarTest

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(addTodo: (NSString *) todo isCompleted: (BOOL *) isCompleted resolve: (RCTPromiseResolveBlock)resolve rejector: (RCTPromiseRejectBlock)reject) {
  NSString *lastName = @"Kothari";
  resolve(lastName);
//  reject(@"1", @"No message", nil);
}

- (NSDictionary *)constantsToExport {
  return @{
           @"NAME": @"Roni"
           };
}

- (dispatch_queue_t)methodQueue {
  return dispatch_queue_create("calendatQueue", DISPATCH_QUEUE_SERIAL);
}

@end
