//
//  SliderView.m
//  UIKit_Catalog
//
//  Created by KentarOu on 2013/12/07.
//  Copyright (c) 2013年 KentarOu. All rights reserved.
//

#import "PopOverView.h"
#import "PopOverController.h"
#import "PopOverController2.h"
#import "PopOverController3.h"
#import "PopOverController4.h"

#import "PopoverBackgroundView.h"

@interface PopOverView()<UIPopoverControllerDelegate,PopOverController2Delegate,PopOverControllerDelegate>
{
    UIPopoverController *popoverController;
    UIPopoverController *popoverController2;
    UIPopoverController *popoverController3;
    UIPopoverController *popoverController4;
    
    __weak IBOutlet UIButton *tableViewButton;
    __weak IBOutlet UIButton *pickerButton;
    __weak IBOutlet UIButton *naviButton;
    __weak IBOutlet UIButton *webButton;
    
}

@end

@implementation PopOverView


// ViewをNibファイルから読み込む
+ (instancetype)LoadFromNib
{
    PopOverView *view = [[UINib nibWithNibName:NSStringFromClass([self class]) bundle:nil]instantiateWithOwner:nil options:nil][0];
    return view;
}

-(void)awakeFromNib {
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(willshowKeyboard:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(didHideKeyboard:) name:UIKeyboardWillHideNotification object:nil];
}


- (void)willshowKeyboard:(NSNotification*)notify {
    
    CGSize size = popoverController3.popoverContentSize;
    size.height = 350;
    
     [popoverController3 setPopoverContentSize:size];
}


- (void)didHideKeyboard:(NSNotification*)notify {
    
    CGSize size = popoverController3.popoverContentSize;
    size.height = 500;
    
    [popoverController3 setPopoverContentSize:size];
    
}



- (IBAction)tapAction:(id)sender
{
    
    // 表示するViewController
    PopOverController *svc = [[PopOverController alloc] init];
    svc.delegate = self;
    popoverController = [[UIPopoverController alloc] initWithContentViewController:svc];
    [popoverController setPopoverContentSize:svc.view.frame.size];
    popoverController.delegate = self;
    
    // Popoverを表示する
    [popoverController presentPopoverFromRect:tableViewButton.bounds
                                       inView:tableViewButton
                     permittedArrowDirections:UIPopoverArrowDirectionUp
                                     animated:YES];
}

- (void)selectCell:(NSString*)titleString
{
    [tableViewButton setTitle:titleString forState:UIControlStateNormal];
}


- (IBAction)popOver_OpenPicker:(id)sender {
    
    // 表示するViewController
    PopOverController2 *svc = [[PopOverController2 alloc] init];
    svc.delegate = self;
    popoverController2 = [[UIPopoverController alloc] initWithContentViewController:svc];
    [popoverController2 setPopoverContentSize:svc.datePicker.frame.size];
    popoverController2.delegate = self;
    
    // Popoverを表示する
    [popoverController2 presentPopoverFromRect:pickerButton.bounds
                                       inView:pickerButton
                     permittedArrowDirections:UIPopoverArrowDirectionRight
                                     animated:YES];
}

- (void)pickerSelect:(NSString*)pickerDate
{
    [pickerButton setTitle:pickerDate forState:UIControlStateNormal];
    
}
- (IBAction)popOver_openWebView:(id)sender
{
    // 表示するViewController
    
    PopOverController4 *svc = [[PopOverController4 alloc] init];
    svc.delegate = self;
    
    popoverController4 = [[UIPopoverController alloc] initWithContentViewController:svc];
    [popoverController4 setPopoverContentSize:svc.view.frame.size];
    popoverController4.delegate = self;
    
    // Popoverを表示する
    [popoverController4 presentPopoverFromRect:webButton.bounds
                                        inView:webButton
                      permittedArrowDirections:UIPopoverArrowDirectionDown
                                      animated:YES];
}

- (IBAction)popOver_openNavigation:(id)sender {
    
    // 表示するViewController
    
    PopOverController3 *svc = [[PopOverController3 alloc] init];
    svc.delegate = self;
    UINavigationController *navi = [[UINavigationController alloc]initWithRootViewController:svc];
   // [navi setNavigationBarHidden:YES];

    
    popoverController3 = [[UIPopoverController alloc] initWithContentViewController:navi];
    [popoverController3 setPopoverContentSize:svc.view.frame.size];
  //  popoverController3.popoverBackgroundViewClass = [PopoverBackgroundView class];
    
    popoverController3.backgroundColor = svc.view.backgroundColor;
    popoverController3.backgroundColor = [UIColor blackColor];
    
    popoverController3.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.6];
    
    popoverController3.delegate = self;
    
    
    CGRect rect = naviButton.bounds;
//    rect = CGRectMake(naviButton.bounds.origin.x - 120,
//                      naviButton.bounds.origin.y + 180,
//                      naviButton.bounds.size.width,
//                      naviButton.bounds.size.height);
    
    
    // Popoverを表示する
    [popoverController3 presentPopoverFromRect:rect
                                        inView:naviButton
                      permittedArrowDirections:UIPopoverArrowDirectionUp
                                      animated:YES];
}

@end
