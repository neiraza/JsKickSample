//
//  UIViewController+DJSAddition.h
//  JsKickSample
//
//  Created by A13694 on 2015/07/27.
//
//

#import <UIKit/UIKit.h>

@interface UIViewController (DJSAddition)

@property NSString* textTag;

- (BOOL)canBecomeFirstResponder;
- (NSArray *)keyCommands;
- (void)reload:(UIKeyCommand *)command;

@end
