//
//  UIViewController+DJSAddition.m
//  JsKickSample
//
//  Created by A13694 on 2015/07/27.
//
//

#import "UIViewController+DJSAddition.h"

#import <objc/runtime.h>

#define TEXT_TAG @"textTag"

@implementation UIViewController (DJSAddition)

//- (void)setTextTag:(NSString *)textTag {
//  if (objc_getAssociatedObject(self, TEXT_TAG) == textTag) return;
//
//  objc_setAssociatedObject(self, TEXT_TAG, textTag, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//}
//
//- (NSString *)textTag {
//  return objc_getAssociatedObject(self, TEXT_TAG);
//}
//
//- (BOOL)canBecomeFirstResponder {
//  return YES;
//}

//- (NSArray *)keyCommands {
//  return @[[UIKeyCommand keyCommandWithInput:@"R"
//                               modifierFlags:UIKeyModifierCommand
//                                      action:@selector(reload:)]];
//}

//- (void)reload:(UIKeyCommand *)command {
//  NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
//  NSDictionary *userInfo = [NSDictionary dictionaryWithObjectsAndKeys:self.textTag, @"vcTag", nil];
//  [nc postNotificationName:@"JSAddition-reload" object:self userInfo:userInfo];
//}

@end
