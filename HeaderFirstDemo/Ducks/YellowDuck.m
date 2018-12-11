//
//  YellowDuck.m
//  HeaderFirstDemo
//
//  Created by 华融 on 2018/12/11.
//  Copyright © 2018年 Huarong Comsumer Finance. All rights reserved.
//

#import "YellowDuck.h"

@implementation YellowDuck

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.flyBh = [NotCanFly new];
    }
    return self;
}

@end
