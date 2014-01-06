//
//  ViewController.m
//  LabIconFont
//
//  Created by Allen Wang on 14-1-6.
//  Copyright (c) 2014年 taobao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //检查字体是否生效
    for (NSString* family in [UIFont familyNames])
    {
        NSLog(@"%@", family);
        
        for (NSString* name in [UIFont fontNamesForFamilyName: family])
        {
            NSLog(@"  %@", name);
        }
    }
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 60, 300, 100)];
    label.font = [UIFont fontWithName:@"uxIconFont" size:100];
    label.text = @"\U00003462";
    label.textColor = [UIColor redColor];
    [self.view addSubview:label];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
