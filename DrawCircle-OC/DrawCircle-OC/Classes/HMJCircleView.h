//
//  HMJCircleView.h
//  DrawCircle-OC
//
//  Created by MJHee on 2017/3/30.
//  Copyright © 2017年 MJBaby. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_OPTIONS(NSUInteger, HMJCircleManageViewType) {
    HMJCircleManageViewTypeArc, //圆弧
    HMJCircleManageViewTypeRound, //圆
};
typedef NS_OPTIONS(NSUInteger, HMJCircleViewType) {
    HMJCircleViewTypeHaveNumber, //展示数字
    HMJCircleViewTypeTextOnBottom, //文字在下面
    HMJCircleViewTypeTextOnBeside, //文字在一边
};

@interface HMJCircleView : UIView

@property(nonatomic , assign) CGRect fFrame;
@property(nonatomic , strong) NSMutableArray *dataArray; //数据数组
@property(nonatomic , assign) CGFloat circleRadius;//半径
//初始化
-(instancetype)initWithFrame:(CGRect)frame andWithDataArray:(NSArray *)dataArr andWithCircleRadius:(CGFloat)circleRadius type:(HMJCircleManageViewType)type internalCircleRadius:(CGFloat)radiu textType:(HMJCircleViewType)textType startRadiu:(CGFloat)startRadiu;

@end
