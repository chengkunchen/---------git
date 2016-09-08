//
//  EmitterViewController.m
//  animation
//
//  Created by dongjh_cck on 16/9/7.
//  Copyright © 2016年 陈成坤. All rights reserved.
//

#import "EmitterViewController.h"

@interface EmitterViewController ()
@property (nonatomic,strong)CAEmitterLayer * layer;
@property (nonatomic,strong)CAEmitterCell  * cell;
@end

@implementation EmitterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
#if 0
    CAEmitterLayer * emitterLayer = [CAEmitterLayer layer];
    emitterLayer.frame = self.view.bounds;
    emitterLayer.emitterPosition = CGPointMake(self.view.center.x, 64);
    emitterLayer.emitterShape = kCAEmitterLayerRectangle;
    emitterLayer.emitterSize = CGSizeMake(self.view.frame.size.width, 20);
    emitterLayer.renderMode = kCAEmitterLayerAdditive;
    emitterLayer.preservesDepth = YES;
    // emitterLayer.birthRate = 2.f;
    [self.view.layer addSublayer:emitterLayer];
    CAEmitterCell * cell = [CAEmitterCell emitterCell];
    cell.contents = (__bridge id)[UIImage imageNamed:@"TwinkleImage"].CGImage;
    cell.birthRate = 3.f;
    cell.lifetime = 10.f;
    cell.yAcceleration = 10;
    //cell.velocity =10;
    cell.emissionRange = M_PI;
    emitterLayer.emitterCells = @[cell];
#else
    
    _layer = [CAEmitterLayer layer];
    _layer.frame = self.view.bounds;
    [self.view.layer addSublayer:_layer];
    _layer.birthRate = 4;
    //configure emitter
    _layer.renderMode = kCAEmitterLayerAdditive;
    _layer.emitterPosition = CGPointMake(_layer.frame.size.width / 2.0, _layer.frame.size.height / 2.0);
    
    //create a particle template
    CAEmitterCell *cell = [[CAEmitterCell alloc] init];
    cell.contents = (__bridge id)[UIImage imageNamed:@"TwinkleImage"].CGImage;
    cell.birthRate = 150;
    cell.lifetime = 5.0;
    cell.color = [UIColor colorWithRed:1 green:0.5 blue:0.1 alpha:1.0].CGColor;
    cell.alphaSpeed = -0.4;
    cell.velocity = 100;
    cell.velocityRange = 120;
    cell.emissionRange = M_PI / 2.0;
    
    //add particle template to emitter
    _layer.emitterCells = @[cell];
#endif
}




@end

















