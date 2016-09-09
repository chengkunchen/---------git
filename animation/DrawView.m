//
//  DrawView.m
//  animation
//
//  Created by dongjh_cck on 16/9/5.
//  Copyright © 2016年 陈成坤. All rights reserved.
//

#import "DrawView.h"
#define dW 20
@interface DrawView ()

@property (nonatomic,strong)NSMutableArray * mArray;

@end

@implementation DrawView


- (void)drawRect:(CGRect)rect {
    if (self.mArray.count == 0) {
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextClearRect(context, self.bounds);
        return;
    }
    
    for (NSValue * value in self.mArray) {
        if (CGRectIntersectsRect(rect, [self rectFromPoint:[value CGPointValue]])) {
            [[UIImage imageNamed:@"TwinkleImage"] drawInRect:rect];
        }
    }
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CGPoint point = [touches.anyObject locationInView:self];
    [self.mArray addObject:[NSValue valueWithCGPoint:point]];
    [self setNeedsDisplayInRect:[self rectFromPoint:point]];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CGPoint point = [touches.anyObject locationInView:self];
    [self.mArray addObject:[NSValue valueWithCGPoint:point]];
    [self setNeedsDisplayInRect:[self rectFromPoint:point]];
}

- (CGRect )rectFromPoint:(CGPoint)point{
    return CGRectMake(point.x - dW/2, point.y - dW/2, dW, dW);
}

-(NSMutableArray *)mArray{
    if (_mArray == nil) {
        _mArray = [NSMutableArray array];
    }
    return _mArray;
}


-(void)clean{
    [self.mArray removeAllObjects];
    [self setNeedsDisplay];
}

@end





























