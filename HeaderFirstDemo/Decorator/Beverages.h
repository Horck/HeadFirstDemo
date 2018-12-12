//
//  Beverage.h
//  HeaderFirstDemo
//
//  Created by 华融 on 2018/12/12.
//  Copyright © 2018年 Huarong Comsumer Finance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Beverage : NSObject

// 此类为抽象类实现需要在子类中
- (CGFloat)cost;

@end

NS_ASSUME_NONNULL_END


// 饮料种类***************************************************************
NS_ASSUME_NONNULL_BEGIN
// 意大利浓咖啡（饮料种类）
@interface Espresso : Beverage

@end

NS_ASSUME_NONNULL_END


NS_ASSUME_NONNULL_BEGIN
// 低咖啡因（饮料种类）
@interface Decaf : Beverage

@end

NS_ASSUME_NONNULL_END


// 饮料调料***************************************************************
NS_ASSUME_NONNULL_BEGIN
// 摩卡(调料)
@interface Mocha : Beverage
@property(strong, nonatomic)Beverage *beverge;

+(instancetype)instanceWith:(Beverage *)beverge;

@end

NS_ASSUME_NONNULL_END


NS_ASSUME_NONNULL_BEGIN
// 牛奶(调料)
@interface Milk : Beverage
@property(strong, nonatomic)Beverage *beverge;

+(instancetype)instanceWith:(Beverage *)beverge;

@end

NS_ASSUME_NONNULL_END
