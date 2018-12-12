//
//  MenuTableViewController.m
//  HeaderFirstDemo
//
//  Created by 华融 on 2018/12/11.
//  Copyright © 2018年 Huarong Comsumer Finance. All rights reserved.
//

#import "MenuTableViewController.h"
#import "ViewController.h"
@interface MenuTableViewController ()

@end

@implementation MenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(nullable id)sender
{
    

    NSString *identifierSting = segue.identifier?segue.identifier:@"";
    NSString *desStr;
    NSString *titleStr;
    ViewController *toVC =segue.destinationViewController;
    
    if ([identifierSting isEqualToString:@"jump1"]) {
        desStr = @"『策略模式』定义了算法族，分别封装起来，让它 们之间可以互相替换，此模式让算法的变化独立于使用 算法的客户。\n 『有一个』可能比『是一个』更好。";
        titleStr = @"策略模式";
    }else if ([identifierSting isEqualToString:@"jump2"])
    {
        desStr = @"观察者模式定义了对象之间的一对多依赖，这 样一来，当一个对象改变状态时，它的所有依赖者都 会收到通知并自动更新。";
        titleStr = @"观察者模式";
    }else if ([identifierSting isEqualToString:@"jump3"])
    {
        desStr = @"装饰者模式动态地将责任附加到对象上。 若要扩展功能，装饰者提供了比继承更有弹性 的替代方案。";
        titleStr = @"装饰者模式";
    }else if ([identifierSting isEqualToString:@"jump4"])
    {
        desStr = @"定义了一个创建对象的接口，单由于子类绝顶要实例化的类是哪一个。工厂方法让类把实例化推迟到子类";
        titleStr = @"工厂模式";
    }
    toVC.desStr = desStr;
    toVC.navigationItem.title = titleStr;

}

@end
