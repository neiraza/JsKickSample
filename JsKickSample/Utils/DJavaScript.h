//
//  DJavaScript.h
//  JsKickSample
//
//  Created by A13694 on 2015/07/27.
//
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@class DJavaScript;

@protocol DJSExport <JSExport>

+ (DJavaScript *)sharedInstance;
- (void)hoge;

@end

@interface DJavaScript : NSObject <DJSExport>

//- (void)runScript:(NSString*)code;
//- (bool)registerId:(NSString*)key Object:(id)value;

@end
