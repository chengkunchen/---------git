//
//  ViewController.m
//  animation
//
//  Created by dongjh_cck on 16/9/5.
//  Copyright © 2016年 陈成坤. All rights reserved.
//
//  碎屏
#import "ViewController1.h"

#define WIDTH  [UIScreen mainScreen].bounds.size.width
#define HEIGHT  [UIScreen mainScreen].bounds.size.height
@interface ViewController1 ()

@property (nonatomic,strong) UIView *containerView;


@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.view.layer.contents = (__bridge id)[UIImage imageNamed:@"原始图片"].CGImage;
    
    [self initUI];
    
}

- (void)initUI
{
    _containerView = [[UIView alloc]initWithFrame:self.view.bounds];
    _containerView.backgroundColor = [UIColor clearColor];
    
   [self crumbling];
}

- (void)crumbling
{
    UIView * view1 = [self.view snapshotViewAfterScreenUpdates:YES];
    
    for (int i = 0; i < HEIGHT/8;i++) {
        for (int j = 0; j < WIDTH/8;j++){
            CGRect snapshotRegion = CGRectMake(j*8, i*8, 8, 8);
            UIView * snapshot=  [view1 resizableSnapshotViewFromRect:snapshotRegion afterScreenUpdates:NO withCapInsets:UIEdgeInsetsZero];
            snapshot.frame = snapshotRegion;
            [self.containerView addSubview:snapshot];
        }
    }
    
    [self.view addSubview:self.containerView];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
         [self animation];
    });
    
}

- (void)animation
{
    [UIView animateWithDuration:4.0 animations:^{
        for (UIView * subView in self.containerView.subviews) {
            
            subView.center = CGPointMake(arc4random()%1125 - 375, CGRectGetMaxY(self.view.frame)+20);
//            subView.transform = CGAffineTransformMakeTranslation(arc4random()%(NSInteger)WIDTH-arc4random()%(NSInteger)WIDTH, HEIGHT+20);
        }
    } completion:^(BOOL finished) {
    }];
    
}

@end















