//
//  ReplicatorView.m
//  animation
//
//  Created by dongjh_cck on 16/9/8.
//  Copyright © 2016年 陈成坤. All rights reserved.
//

#import "ReplicatorView.h"
#define WIDTH  [UIScreen mainScreen].bounds.size.width
#define HEIGHT  [UIScreen mainScreen].bounds.size.height
@implementation ReplicatorView

-(void)awakeFromNib{
    [self initUI];
}

+(Class)layerClass
{
    return [CAReplicatorLayer class];
}

-(void)initUI{

    CAReplicatorLayer * layer = (CAReplicatorLayer *)self.layer;
    layer.instanceCount = 2;
    
    CATransform3D d = CATransform3DMakeTranslation(0, 65, 0);
    d = CATransform3DRotate(d, M_PI, 1, 0, 0);
    d = CATransform3DScale(d, 1, 0.8, 1);
    layer.instanceTransform = d;
    layer.instanceAlphaOffset = -0.2;

}
@end
