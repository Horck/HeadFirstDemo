//
//  FlyBehaviors.h
//  HeaderFirstDemo
//
//  Created by 华融 on 2018/12/11.
//  Copyright © 2018年 Huarong Comsumer Finance. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlyBehavior : NSObject
- (void)startFly;

@end

NS_ASSUME_NONNULL_END


NS_ASSUME_NONNULL_BEGIN

@interface NotCanFly : FlyBehavior

@end

NS_ASSUME_NONNULL_END
