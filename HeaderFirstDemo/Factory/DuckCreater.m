//
//  DuckCeater.m
//  HeaderFirstDemo
//
//  Created by 华融 on 2018/12/12.
//  Copyright © 2018年 Huarong Comsumer Finance. All rights reserved.
//

#import "DuckCreater.h"
#import "YellowDuck.h"
#import "RedDuck.h"

@implementation DuckCreater
- (BaseDuck *)creatDuckWithType:(DuckType)type
{
    switch (type) {
        case DuckTypeRed:
        {
            BaseDuck *duck = [RedDuck new];
            NSLog(@"返回红鸭子---->%@",duck);
            return duck;
        }
            break;
        case DuckTypeYellow:
        {
           
            BaseDuck *duck = [YellowDuck new];
            NSLog(@"返回黄鸭子---->%@",duck);
            return duck;
        }
            break;

    }
    return nil;
}

@end
