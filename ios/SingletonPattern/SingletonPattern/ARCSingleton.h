//
//  ARCSingleton.h
//  SingletonPattern
//
//  Created by Allen Wang on 14-1-21.
//  Copyright (c) 2014年 taobao. All rights reserved.
//

#import <Foundation/Foundation.h>

#define DEFINE_SHARED_INSTANCE_USING_BLOCK(block) \
static dispatch_once_t onceToken = 0; \
__strong static id sharedInstance = nil; \
dispatch_once(&onceToken, ^{ \
sharedInstance = block(); \
}); \
return sharedInstance; \

@interface ARCSingleton : NSObject

@property (nonatomic, strong) NSString *testString;
+ (ARCSingleton *)sharedInstance;

@end
