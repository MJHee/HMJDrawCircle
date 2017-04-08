//
//  HMJCircleManageView.m
//  DrawCircle-OC
//
//  Created by MJHee on 2017/3/30.
//  Copyright © 2017年 MJBaby. All rights reserved.
//

#define HMJDeviceWidth [UIScreen mainScreen].bounds.size.width
#define HMJDeviceHeight [UIScreen mainScreen].bounds.size.height

#import "HMJCircleManageView.h"



@interface HMJCircleManageView()
{
    HMJCircleView *circleView;
    id delegate;
}
@property (nonatomic,assign) CGFloat Radius;
@property (nonatomic,assign) CGFloat PIE_HEIGHT;
@property (nonatomic,assign) HMJCircleViewType textType;
//开始时的弧度
@property (nonatomic,assign) CGFloat startRadiu;

@end

@implementation HMJCircleManageView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        self.PIE_HEIGHT = frame.size.height;
    }
    return self;
}

-(void)loadDataArray:(NSArray *)dataArray withType:(HMJCircleManageViewType)type circleRadius:(CGFloat)circleRadius internalCircleRadius:(CGFloat)internalCircleRadius textType:(HMJCircleViewType)textType startRadiu:(CGFloat)startRadiu
{
    [circleView removeFromSuperview];
    circleView = nil;
    self.Radius = circleRadius;
    self.textType = textType;
    self.startRadiu = startRadiu;
    circleView = [[HMJCircleView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.PIE_HEIGHT) andWithDataArray:dataArray andWithCircleRadius:self.Radius type:type internalCircleRadius:internalCircleRadius textType:self.textType startRadiu:self.startRadiu];
    circleView.backgroundColor = [UIColor clearColor];
    [self addSubview:circleView];
}

@end
