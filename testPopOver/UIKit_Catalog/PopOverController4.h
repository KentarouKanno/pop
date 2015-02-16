//
//  PopOverController.h
//  UIKit_Catalog
//
//  Created by KentarOu on 2014/10/08.
//  Copyright (c) 2014年 KentarOu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PopOverController4 : UIViewController


@property (weak, nonatomic) IBOutlet UIWebView *mainWebView;
@property (weak, nonatomic) id delegate;

@end

@protocol PopOverController4Delegate <NSObject>

- (void)pickerSelect:(NSString*)pickerDate;

@end
