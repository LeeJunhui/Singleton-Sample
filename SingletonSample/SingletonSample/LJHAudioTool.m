//
//  LJHAudioTool.m
//  SingletonSample
//
//  Created by LeeJunHui on 15/4/12.
//  Copyright (c) 2015年 Apple. All rights reserved.
//  音频工具类

#import "LJHAudioTool.h"

@implementation LJHAudioTool

static id _instance;

- (id)init
{
    if (self = [super init]) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            // 加载资源
            
        });
    }
    return self;
}

+ (instancetype)sharedAudioTool
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}



@end
