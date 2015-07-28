//
//  WebViewSampleControllerViewController.m
//  JsKickSample
//
//  Created by A13694 on 2015/07/28.
//
//

#import "WebViewSampleControllerViewController.h"

@interface WebViewSampleControllerViewController () <UIWebViewDelegate>
@property (strong, nonatomic) UIWebView *webView;
@end

@implementation WebViewSampleControllerViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  self.webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 1.0f, 1.0f)];
  self.webView.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];

//  NSString *html = @"<html><head><script>function test(value) {return JSON.stringify({result : value * 100});}</script></head><body></body></html>";
  NSString *html = @"<html><head><script>function test(value) {return JSON.stringify({result : value * 100});}function getJson(){var xmlHttp = new XMLHttpRequest();xmlHttp.open(\"GET\", \"https://dl.dropboxusercontent.com/u/24338547/fuga.json\", false);xmlHttp.send(null);return xmlHttp.responseText;}</script></head><body></body></html>";
  [self.webView loadHTMLString:html baseURL:nil];
}

#pragma mark - UIWebViewDelegate

- (void)webViewDidFinishLoad:(UIWebView *)webView {

  // JSを実行する
//  NSString *js = [NSString stringWithFormat:@"test(%i);", 10];
  NSString *js = @"getJson();";
  NSString *jsonString = [webView stringByEvaluatingJavaScriptFromString:js];

  NSLog(@"jsonString: %@", jsonString);

  NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
  NSDictionary *json = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
  NSLog(@"json: %@", json);
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

@end
