//
//  ReplicatorViewController.m
//  animation
//
//  Created by dongjh_cck on 16/9/7.
//  Copyright © 2016年 陈成坤. All rights reserved.
//

#import "ReplicatorViewController.h"
#import "webView.h"
#define WIDTH  [UIScreen mainScreen].bounds.size.width
#define HEIGHT  [UIScreen mainScreen].bounds.size.height
@interface ReplicatorViewController ()
@property (strong, nonatomic) webView *webView;

@end

@implementation ReplicatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView = [[webView alloc]initWithFrame:CGRectMake(0, 64, WIDTH, HEIGHT/2 + 3)];
    
    [self.view addSubview:self.webView];
    
}



@end









