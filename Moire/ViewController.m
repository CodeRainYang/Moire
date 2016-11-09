//
//  ViewController.m
//  Moire
//
//  Created by DengHengYu on 16/11/9.
//  Copyright © 2016年 YunJing. All rights reserved.
//

#import "ViewController.h"
#import "HYMoireView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)btnClick:(id)sender {
    UIButton *button = (UIButton *)sender;
    HYMoireView *view = [[HYMoireView alloc] init];
    view.frame = self.view.frame;
    view.hy_center = button.center;
    view.hy_radius =  button.bounds.size.width/2.0;
    view.backgroundColor = [UIColor clearColor];
    [self.view insertSubview:view belowSubview:button];
    [UIView animateWithDuration:2.8 animations:^{
        view.transform = CGAffineTransformScale(view.transform, 4.0, 4.0);
        view.alpha = 0;
    } completion:^(BOOL finished) {
        [view removeFromSuperview];
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
