//
//  PopOverController.m
//  UIKit_Catalog
//
//  Created by KentarOu on 2014/10/08.
//  Copyright (c) 2014年 KentarOu. All rights reserved.
//

#import "PopOverController2.h"

@interface PopOverController2 ()
{
    NSDateFormatter *df;
}


@end

@implementation PopOverController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    df = [[NSDateFormatter alloc]init];
    _datePicker.date = [NSDate date];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)pickerSelect:(id)sender {
    
    if (_delegate) {
        df.dateFormat = @"yyyy/MM/dd HH:mm";
        [_delegate pickerSelect:[df stringFromDate:((UIDatePicker*)sender).date]];
    }
}




@end
