//
//  PopOverController.h
//  UIKit_Catalog
//
//  Created by KentarOu on 2014/10/08.
//  Copyright (c) 2014年 KentarOu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PopOverController2 : UIViewController

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) id delegate;

@end

@protocol PopOverController2Delegate <NSObject>

- (void)pickerSelect:(NSString*)pickerDate;

@end
