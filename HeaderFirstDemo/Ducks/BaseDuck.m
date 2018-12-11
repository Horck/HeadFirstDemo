//
//  BaseDuck.m
//  HeaderFirstDemo
//
//  Created by 华融 on 2018/12/11.
//  Copyright © 2018年 Huarong Comsumer Finance. All rights reserved.
//

#import "BaseDuck.h"

@implementation BaseDuck

-(void)fly
{
    [self.flyBh startFly];
}

-(void)quack
{
    [self.quackbh startQuack];
}

- (FlyBehavior *)flyBh
{
    if (!_flyBh) {
        _flyBh = [FlyBehavior new];
    }
    return _flyBh;
}

- (QuackBehavior *)quackbh
{
    if (!_quackbh) {
        _quackbh =[QuackBehavior new];
    }
    return _quackbh;
}
@end
