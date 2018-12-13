//
//  SingleInstance.m
//  HeaderFirstDemo
//
//  Created by 华融 on 2018/12/13.
//  Copyright © 2018年 Huarong Comsumer Finance. All rights reserved.
//

#import "SingleInstance.h"
@implementation SingleInstance
static SingleInstance *instance = nil;
+(instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
    
}

+(id) allocWithZone:(struct _NSZone *)zone
{
    return [SingleInstance shareInstance] ;
}

-(id) copyWithZone:(struct _NSZone *)zone
{
    return [SingleInstance shareInstance] ;
}


@end
