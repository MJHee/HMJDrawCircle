//
//  HMJCircleManageView.h
//  DrawCircle-OC
//
//  Created by MJHee on 2017/3/30.
//  Copyright © 2017年 MJBaby. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HMJCircleView.h"

@interface HMJCircleManageView : UIView

-(instancetype)initWithFrame:(CGRect)frame;

-(void)loadDataArray:(NSArray *)dataArray withType:(HMJCircleManageViewType)type circleRadius:(CGFloat)circleRadius internalCircleRadius:(CGFloat)internalCircleRadius textType:(HMJCircleViewType)textType startRadiu:(CGFloat)startRadiu;

@end
