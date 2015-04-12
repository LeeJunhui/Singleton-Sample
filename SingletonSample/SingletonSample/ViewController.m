//
//  ViewController.m
//  SingletonSample
//
//  Created by LeeJunHui on 15/4/12.
//  Copyright (c) 2015年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "LJHAudioTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    LJHAudioTool *audio1 = [[LJHAudioTool alloc] init];
    LJHAudioTool *audio2 = [LJHAudioTool sharedAudioTool];
    
    //通过打印内存地址来验证是否为同一对象
    NSLog(@"%p %p",audio1,audio2);
}

@end
