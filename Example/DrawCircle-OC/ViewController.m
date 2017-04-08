//
//  ViewController.m
//  DrawCircle-OC
//
//  Created by MJHee on 2017/3/29.
//  Copyright © 2017年 MJBaby. All rights reserved.
//

#import "ViewController.h"
#import "HMJCircleManageView.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = true;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    HMJCircleManageView * circleView = [[HMJCircleManageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [circleView loadDataArray:@[@{@"number":@"300",@"color":[UIColor redColor],@"name":@"保底院校"},
                                 @{@"number":@"300",@"color":[UIColor blueColor],@"name":@"稳妥院校"},
                                 @{@"number":@"50",@"color":[UIColor colorWithRed:0.27 green:0.74 blue:0.27 alpha:1],@"name":@"冲刺院校"},
                                 ] withType:HMJCircleManageViewTypeRound circleRadius:100 internalCircleRadius:80 textType:HMJCircleViewTypeTextOnBeside startRadiu:-M_PI_2];
    [self.view addSubview:circleView];
    
}


@end
