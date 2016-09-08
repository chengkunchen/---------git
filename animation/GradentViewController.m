//
//  GradentViewController.m
//  animation
//
//  Created by dongjh_cck on 16/9/7.
//  Copyright © 2016年 陈成坤. All rights reserved.
//

#import "GradentViewController.h"
#define colorRandom (id)[UIColor colorWithRed:arc4random()%256 / 256.0 green:arc4random()%256 /256.0 blue:arc4random()%256 / 256.0 alpha:1.0].CGColor
@interface GradentViewController ()

@property (nonatomic,strong)CAGradientLayer * gradentLayer;

@end

@implementation GradentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.view.layer.contents = (__bridge id)[UIImage imageNamed:@"原始图片"].CGImage;
    _gradentLayer = [CAGradientLayer layer];
    _gradentLayer.frame = self.view.frame;
    _gradentLayer.opacity = 0.5;
    _gradentLayer.shadowOpacity = 0.5;
    _gradentLayer.colors = @[(id)[UIColor orangeColor].CGColor,(id)[UIColor purpleColor].CGColor,(id)[UIColor grayColor].CGColor,(id)[UIColor greenColor].CGColor];
    _gradentLayer.locations = @[@0.2,@0.4,@0.6,@0.8];
    _gradentLayer.startPoint = CGPointMake(0, 0);
    _gradentLayer.endPoint = CGPointMake(1, 1);
    [self.view.layer addSublayer:_gradentLayer];
}

- (IBAction)change:(id)sender {
    _gradentLayer.colors = @[colorRandom,colorRandom,colorRandom,colorRandom];
}

@end









