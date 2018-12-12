//
//  Beverage.m
//  HeaderFirstDemo
//
//  Created by 华融 on 2018/12/12.
//  Copyright © 2018年 Huarong Comsumer Finance. All rights reserved.
//

#import "Beverages.h"
@implementation Beverage
// 默认0
- (CGFloat)cost
{
    return 0;
}

@end



@implementation Espresso
// 直接返回价格
- (CGFloat)cost
{
    return 1.15f;
}
-(NSString *)description
{
    return @"+意大利咖啡 $1.15";
}
@end


@implementation Decaf
// 直接返回价格
- (CGFloat)cost
{
    return 1.08f;
}
-(NSString *)description
{
    return @"+低咖啡因 $1.08";
}
@end




@implementation Mocha

- (CGFloat)cost
{
    // 摩卡价格 + 自己beverage价格
    return 0.85f+[self.beverge cost];
}

-(NSString *)description
{
    return [self.beverge.description stringByAppendingString:@"+摩卡 $0.85"];
}

+(instancetype)instanceWith:(Beverage *)beverge
{
    Mocha *mocha = [[Mocha alloc] init];
    mocha.beverge = beverge;
    return mocha;
}

@end



@implementation Milk

- (CGFloat)cost
{
    // 摩卡价格 + 自己beverage价格
    return 0.65f+[self.beverge cost];
}

-(NSString *)description
{
    return [self.beverge.description stringByAppendingString:@"+奶 $0.65"];
}

+(instancetype)instanceWith:(Beverage *)beverge
{
    Milk *milk = [[Milk alloc] init];
    milk.beverge = beverge;
    return milk;
}
@end
