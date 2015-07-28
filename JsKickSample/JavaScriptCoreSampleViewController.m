//
//  JavaScriptCoreSample.m
//  JsKickSample
//
//  Created by A13694 on 2015/07/27.
//
//

#import "JavaScriptCoreSampleViewController.h"

#import "DJavaScript.h"

@interface JavaScriptCoreSampleViewController ()

@end

@implementation JavaScriptCoreSampleViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  // Obj-C -> JavaScript
  JSContext *context = [[JSContext alloc] init];
  [context evaluateScript:@"var a = 10;"];
  JSValue *value = context[@"a"];
  NSLog(@"%d", value.toInt32); // => 10

  // JavaScript -> Obj-Cb
  context[@"DJavaScript"] = [DJavaScript class];
  [context evaluateScript:@"DJavaScript.sharedInstance().hoge();"];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
