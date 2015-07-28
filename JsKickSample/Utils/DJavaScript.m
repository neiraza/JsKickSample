//
//  DJavaScript.m
//  JsKickSample
//
//  Created by A13694 on 2015/07/27.
//
//

#import "DJavaScript.h"

@interface DJavaScript()
@end

@implementation DJavaScript

+ (DJavaScript *)sharedInstance {
  static DJavaScript *sharedInstance = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    sharedInstance = [[DJavaScript alloc] init];
  });
  return sharedInstance;
}

- (id)init {
  self = [super init];
  if (self) {

  }
  return self;
}

- (void)hoge {
  NSLog(@"wwwwwwwwwwwwwwwwwwwwwwwww");
}

@end
