//
//  ViewController.m
//  OpenAccount
//
//  Created by jiejie on 2020/12/15.
//  Copyright © 2020 jiejie. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()<WKUIDelegate,WKNavigationDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadWebViewConfig];
}

- (void)loadWebViewConfig {
    
    NSString *url = @"https://testmall.dgzq.com.cn/wskh/index.html?app_key=wechat&app_version=1";
    WKWebViewConfiguration *conf = [[WKWebViewConfiguration alloc]init];
    conf.preferences = [[WKPreferences alloc]init];
    conf.preferences.minimumFontSize = 10;
    conf.preferences.javaScriptEnabled = YES;
    conf.userContentController = [[WKUserContentController alloc]init];
    conf.processPool = [[WKProcessPool alloc]init];
    
    //初始化
    self.openWebView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) configuration:conf];
    self.openWebView.backgroundColor = [UIColor whiteColor];
    [self.openWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    [self.view addSubview:self.openWebView];

    self.openWebView.UIDelegate = self;
    self.openWebView.navigationDelegate = self;
    
    
    

}

@end
