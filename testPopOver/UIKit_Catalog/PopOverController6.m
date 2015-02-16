//
//  PopOverController6.m
//  UIKit_Catalog
//
//  Created by KentarOu on 2015/02/17.
//  Copyright (c) 2015年 KentarOu. All rights reserved.
//

#import "PopOverController6.h"

@interface PopOverController6 ()

@end

@implementation PopOverController6

- (void)viewDidLoad {
    [super viewDidLoad];
        
    self.title = @"PopOver Navigation";
    
    self.view.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.5];
    
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
                                                  forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.translucent = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:YES];
}


@end
