//
//  SingleInstance.h
//  HeaderFirstDemo
//
//  Created by 华融 on 2018/12/13.
//  Copyright © 2018年 Huarong Comsumer Finance. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SingleInstance : NSObject
+(instancetype)shareInstance;
@end

NS_ASSUME_NONNULL_END
