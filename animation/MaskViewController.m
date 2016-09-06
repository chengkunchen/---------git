//
//  MaskViewController.m
//  animation
//
//  Created by dongjh_cck on 16/9/5.
//  Copyright © 2016年 陈成坤. All rights reserved.
//

#import "MaskViewController.h"
#define WIDTH  [UIScreen mainScreen].bounds.size.width
#define HEIGHT  [UIScreen mainScreen].bounds.size.height
@interface MaskViewController ()

@property (nonatomic,strong)CALayer * maskLayer;

@end

@implementation MaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
    [self animationMaskLayer];
}

-(void)initUI{
    CALayer * imageLayer = [[CALayer alloc]init];
    imageLayer.frame = self.view.frame;
    [self.view.layer addSublayer:imageLayer];
    imageLayer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"原始图片"].CGImage);
    
    self.maskLayer = [[CALayer alloc]init];
    
    self.maskLayer.frame = CGRectMake(0, 0, 200, 200);
    self.maskLayer.contents = (__bridge id)[UIImage imageNamed:@"maskLayerContents"].CGImage;
    self.maskLayer.cornerRadius = 100;
    
    imageLayer.mask = self.maskLayer;
}

-(void)animationMaskLayer{
    NSTimer * timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(changeMask) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop]addTimer:timer forMode:NSRunLoopCommonModes];
}

-(void)changeMask{
    self.maskLayer.frame = CGRectMake(arc4random()%((NSInteger)WIDTH-200), arc4random() % ((NSInteger)HEIGHT-200), 200, 200);
}

@end
