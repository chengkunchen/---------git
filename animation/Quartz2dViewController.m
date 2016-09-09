//
//  Quartz2dViewController.m
//  animation
//
//  Created by dongjh_cck on 16/9/9.
//  Copyright © 2016年 陈成坤. All rights reserved.
//

#import "Quartz2dViewController.h"
#import "QuartzView.h"
@interface Quartz2dViewController ()
@property (weak, nonatomic) IBOutlet QuartzView *quartView;

@end

@implementation Quartz2dViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)disPlay:(id)sender {
    [_quartView setNeedsDisplay];
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
