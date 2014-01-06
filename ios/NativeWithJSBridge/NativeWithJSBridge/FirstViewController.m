//
//  FirstViewController.m
//  NativeWithJSBridge
//
//  Created by Allen Wang on 14-1-6.
//  Copyright (c) 2014年 taobao. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _webview = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    [_webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.taobao.com"]]];
    
    [self.view addSubview:_webview];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 40)];
    [btn setTitle:@"测试" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

- (void) test
{
    //stringByEvaluatingJavaScriptFromString 方法可以将js嵌入到页面中
    NSString *result1 = [_webview stringByEvaluatingJavaScriptFromString:@"alert('www.taobao.com');"]; // 弹出提示，无返回值
    NSString *result2 = [_webview stringByEvaluatingJavaScriptFromString:@"alert(window.assetsHost);"]; // 返回页面地址
    NSString *result3 = [_webview stringByEvaluatingJavaScriptFromString:@"document.getElementById('J_dropdown').innerHTML;"]; // 返回页面某个标记内容
    NSString *result4 = [_webview stringByEvaluatingJavaScriptFromString:@"document.getElementById('J_dropdown').innerHTML = '小飞';"]; // 设置页面某个标记内容
    
    
    NSLog(@"%@", result1);
    NSLog(@"%@", result2);
    NSLog(@"%@", result3);
    NSLog(@"%@", result4);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
