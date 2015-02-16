//
//  PopOverController.h
//  UIKit_Catalog
//
//  Created by KentarOu on 2014/10/08.
//  Copyright (c) 2014年 KentarOu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PopOverController : UIViewController

@property (weak, nonatomic) id delegate;

@end

@protocol PopOverControllerDelegate <NSObject>

- (void)selectCell:(NSString*)titleString;

@end
