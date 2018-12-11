//
//  BaseDuck.h
//  HeaderFirstDemo
//
//  Created by 华融 on 2018/12/11.
//  Copyright © 2018年 Huarong Comsumer Finance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyBehaviors.h"
#import "QuackBehaviors.h"
NS_ASSUME_NONNULL_BEGIN

@interface BaseDuck : NSObject
@property(strong, nonatomic) FlyBehavior *flyBh;
@property(strong, nonatomic) QuackBehavior *quackbh;

-(void)fly;

-(void)quack;
@end

NS_ASSUME_NONNULL_END
