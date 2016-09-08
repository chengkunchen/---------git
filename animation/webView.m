//
//  webView.m
//  animation
//
//  Created by dongjh_cck on 16/9/8.
//  Copyright © 2016年 陈成坤. All rights reserved.
//

#import "webView.h"

@implementation webView

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        NSURL * url = [NSURL URLWithString:@"https://www.mozilla.org/zh-CN/firefox/new/"];
        [self loadRequest:[NSURLRequest requestWithURL:url]];
        self.delegate = self;
        self.alpha = 0;
    }
    return self;
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    self.alpha = 0.9;
    [self initUI];
}

-(void)initUI{
    CAReplicatorLayer * layer = (CAReplicatorLayer *)self.layer;
    layer.instanceCount = 2;
    
    CATransform3D d = CATransform3DMakeTranslation(0, self.frame.size.height-35, 0);
    d = CATransform3DRotate(d, M_PI, 1, 0, 0);
    d = CATransform3DScale(d, 1, 0.8, 1);
    layer.instanceTransform = d;
    layer.instanceAlphaOffset = -0.2;
    layer.instanceRedOffset = -0.1;
    layer.instanceGreenOffset = -0.1;
    layer.instanceBlueOffset = -0.1;
}


+(Class)layerClass{
    return [CAReplicatorLayer class];
}

@end
