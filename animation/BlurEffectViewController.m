//
//  BlurEffectViewController.m
//  animation
//
//  Created by dongjh_cck on 16/9/6.
//  Copyright © 2016年 陈成坤. All rights reserved.
//

#import "BlurEffectViewController.h"

@interface BlurEffectViewController ()

@property (weak, nonatomic) IBOutlet UIButton *blurBtn;

@property (weak, nonatomic) IBOutlet UIVisualEffectView *visulView;

@end

@implementation BlurEffectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.layer.contents = (__bridge id)[UIImage imageNamed:@"原始图片"].CGImage;
    _visulView.alpha = 0.5;

}
- (IBAction)blueChange:(id)sender {
   
   static int a = 0;
    if (a == 3) {
        a = 0;
    }
    _visulView.effect = [UIBlurEffect effectWithStyle:a];
    a++;
}

-(void)xxxx{
#if 0
    //没用 写着玩
    UIVisualEffectView * effectView = [[UIVisualEffectView alloc]initWithFrame:self.view.frame];
    effectView.effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    [self.view addSubview:effectView];
#endif
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end









