//
//  ViewController.m
//  SingletonPattern
//
//  Created by Allen Wang on 14-1-21.
//  Copyright (c) 2014年 taobao. All rights reserved.
//

#import "ViewController.h"
#import "ARCSingleton.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *testString;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [ARCSingleton sharedInstance].testString = @"ARC单例";
    NSLog(@"%@", [ARCSingleton sharedInstance].testString);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
