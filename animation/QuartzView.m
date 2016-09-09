//
//  QuartzView.m
//  animation
//
//  Created by dongjh_cck on 16/9/9.
//  Copyright © 2016年 陈成坤. All rights reserved.
//

#import "QuartzView.h"
/*
 随机颜色
 */
#define ColorWithRandom [UIColor colorWithRed :arc4random() % 256/256.0 green:arc4random() % 256/256.0  blue:arc4random() % 256/256.0  alpha:1.0]

@implementation QuartzView

- (void)drawRect:(CGRect)rect {
    [self drawArc];
}


-(void)drawArc{
    //获取上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    //获取上下文
    [ColorWithRandom setStroke];
    //设置线宽
    CGContextSetLineWidth(context, 100);
    //设置线帽
    CGContextSetLineCap(context, kCGLineCapButt);
    
    static int k ;
    k++;
    static BOOL wise;
    
    if (k==7) {
        k = -6;
        wise = 1;
    }else if (k==0){
        k = 1;
        wise = 0;
    }
    /*
     参数说明:
     1，上下文
     2 3，x，y表示弧的中心点
     4，半径
     5，起始位置弧度
     6，结束位置弧度
     7，是否顺时针方向0表示顺时针，1表示逆时针
     */
    CGContextAddArc(context, 200, 200, 50,-M_PI_2, -M_PI_2+k, wise);
    CGContextStrokePath(context);
}

@end
