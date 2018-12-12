//
//  QuackBehaviors.m
//  HeaderFirstDemo
//
//  Created by 华融 on 2018/12/11.
//  Copyright © 2018年 Huarong Comsumer Finance. All rights reserved.
//

#import "QuackBehaviors.h"

@implementation QuackBehavior
- (void)startQuack
{
    NSLog(@"我有叫的能力， 呱呱呱！！");
}
@end



@implementation NotCanQuack
- (void)startQuack
{
    NSLog(@"我不会叫........");
}
@end
