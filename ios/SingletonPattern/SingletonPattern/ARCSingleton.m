//
//  ARCSingleton.m
//  SingletonPattern
//
//  Created by Allen Wang on 14-1-21.
//  Copyright (c) 2014年 taobao. All rights reserved.
//

#import "ARCSingleton.h"

@implementation ARCSingleton

+ (ARCSingleton *) sharedInstance
{
    static ARCSingleton *sharedInstance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

@end
