//
//  RedDuck.m
//  HeaderFirstDemo
//
//  Created by 华融 on 2018/12/11.
//  Copyright © 2018年 Huarong Comsumer Finance. All rights reserved.
//

#import "RedDuck.h"

@implementation RedDuck
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.quackbh = [NotCanQuack new];
    }
    return self;
}
@end
