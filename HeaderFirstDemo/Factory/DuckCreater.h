//
//  DuckCeater.h
//  HeaderFirstDemo
//
//  Created by 华融 on 2018/12/12.
//  Copyright © 2018年 Huarong Comsumer Finance. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum : NSUInteger {
    DuckTypeRed,
    DuckTypeYellow
} DuckType;

@class BaseDuck;

NS_ASSUME_NONNULL_BEGIN


@interface DuckCreater : NSObject
- (BaseDuck *)creatDuckWithType:(DuckType)type;

@end

NS_ASSUME_NONNULL_END
