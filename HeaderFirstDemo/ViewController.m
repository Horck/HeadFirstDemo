//
//  ViewController.m
//  HeaderFirstDemo
//
//  Created by 华融 on 2018/12/11.
//  Copyright © 2018年 Huarong Comsumer Finance. All rights reserved.
//

#import "ViewController.h"
#import "YellowDuck.h"
#import "RedDuck.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *desLabel;

@property(strong, nonatomic) YellowDuck *yellowDuck;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.desLabel.text = self.desStr;
    
    // 注册监听
    [self.yellowDuck addObserver:self forKeyPath:@"weight" options:NSKeyValueObservingOptionNew context:nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)flyAction:(id)sender {
    NSString *title = self.navigationItem.title;
    if ([title isEqualToString:@"策略模式"]) {
        [self jump1Action];
    }else if ([title isEqualToString:@"观察者模式"])
    {
        [self jump2Action];
    }
}

#pragma mark - 策略模式
- (void)jump1Action
{
    NSLog(@"黄鸭子的能力**************************************");
    YellowDuck *duck = [YellowDuck new];
    [duck fly];
    [duck quack];
    
    NSLog(@"红鸭子的能力**************************************");
    RedDuck *redDuck = [RedDuck new];
    [redDuck fly];
    [redDuck quack];

}

#pragma mark - 观察者模式 这里用KVO实现一下
- (void)jump2Action
{
    self.yellowDuck.weight+=1;
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    if ([object isKindOfClass:[YellowDuck class]]) {
        NSLog(@"监听的值改变了 新值是 %@",change[@"new"]);
    }
}


- (YellowDuck *)yellowDuck
{
    if (!_yellowDuck) {
        _yellowDuck = [YellowDuck new];
    }
    return _yellowDuck;
}
@end
