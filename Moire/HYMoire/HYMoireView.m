//
//  HYMoireView.m
//  Moire
//
//  Created by DengHengYu on 16/11/9.
//  Copyright © 2016年 YunJing. All rights reserved.
//

#import "HYMoireView.h"

@implementation HYMoireView


- (void)drawRect:(CGRect)rect {
    
    CGPoint center = self.hy_center;
    CGFloat radius = self.hy_radius;
    CGFloat startAngle = 0.0;
    CGFloat endAngle = 2 * M_PI;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:YES];
    CAShapeLayer *layer = [[CAShapeLayer alloc] init];
    layer.path = path.CGPath;
    layer.strokeColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.07].CGColor;
    layer.fillColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.15].CGColor;
    [self.layer addSublayer:layer];
}


@end
