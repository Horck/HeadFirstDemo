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
#import "Beverages.h"
#import "PicShowController.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *desLabel;

@property(strong, nonatomic) YellowDuck *yellowDuck;
@property (weak, nonatomic) IBOutlet UIImageView *img;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.desLabel.text = self.desStr;
    self.img.image = [UIImage imageNamed:self.navigationItem.title];
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
    }else if ([title isEqualToString:@"装饰者模式"])
    {
        [self jump3Action];
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


- (IBAction)tapImg:(id)sender {
    PicShowController *picShowVC = [[PicShowController alloc] init];
    picShowVC.curImage = self.img.image;
    [self presentViewController:picShowVC animated:NO completion:^{
        
    }];
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

#pragma mark -装饰者模式
- (void)jump3Action
{
    // 开始计算不同种类不同配料开发价格
    //1 浓咖啡+摩卡+奶
    Beverage *es = [[Espresso alloc] init];
    
    es = [Mocha instanceWith:es];
    
    es = [Milk instanceWith:es];
    
    NSLog(@"价格是%@ =$%.2f",es,es.cost);
    
    
    //2 低咖啡因 +奶
    Beverage *de = [[Decaf alloc] init];
    de = [Milk instanceWith:de];
    NSLog(@"价格是%@ =$%.2f",de ,de.cost);
    

}

- (YellowDuck *)yellowDuck
{
    if (!_yellowDuck) {
        _yellowDuck = [YellowDuck new];
    }
    return _yellowDuck;
}
@end
