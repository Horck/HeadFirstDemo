//
//  FlyBehaviors.m
//  HeaderFirstDemo
//
//  Created by 华融 on 2018/12/11.
//  Copyright © 2018年 Huarong Comsumer Finance. All rights reserved.
//

#import "FlyBehaviors.h"

@implementation FlyBehavior
- (void)startFly
{
    NSLog(@"I can Fly  开始飞啦！~~");
}

@end



@implementation NotCanFly
- (void)startFly
{
    NSLog(@"I can't Fly .....");
}

@end
