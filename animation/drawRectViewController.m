//
//  drawRectViewController.m
//  animation
//
//  Created by dongjh_cck on 16/9/5.
//  Copyright © 2016年 陈成坤. All rights reserved.
//

#import "drawRectViewController.h"
#import "DrawView.h"
@interface drawRectViewController ()

@property (weak, nonatomic) IBOutlet DrawView *drawView;

@end

@implementation drawRectViewController
- (IBAction)cleanBtn:(id)sender {
    [self.drawView clean];
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.frame];
//    imageView.image = [UIImage imageNamed:@"原始图片"];
//    [self.view addSubview:imageView];
//    self.drawView = [[DrawView alloc]initWithFrame:self.view.frame];
//    [self.view addSubview:self.drawView];
    self.view.layer.contents = (__bridge id)[UIImage imageNamed:@"20140628142758_Bckm4.jepg"].CGImage;
}




@end
