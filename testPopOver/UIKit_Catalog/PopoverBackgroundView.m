//
//  PopoverBackgroundView.m
//  PopoverTest
//
//  Created by tochi on 2014/02/01.
//  Copyright (c) 2014年 aguuu.com. All rights reserved.
//

#import "PopoverBackgroundView.h"

@interface PopoverBackgroundView ()
{
  CGFloat _arrowOffset;
  UIPopoverArrowDirection _arrowDirection;
}
@end

@implementation PopoverBackgroundView
+ (CGFloat)arrowHeight
{
  return 0.0f;
}

+ (UIEdgeInsets)contentViewInsets
{
  return UIEdgeInsetsMake(0.0f, 0.0f, 0.0f, 0.0f);
}

- (UIPopoverArrowDirection)arrowDirection
{
  return _arrowDirection;
}

- (void)setArrowDirection:(UIPopoverArrowDirection)arrowDirection
{
  _arrowDirection = arrowDirection;
}

- (CGFloat)arrowOffset
{
  return _arrowOffset;
}

- (void)setArrowOffset:(CGFloat)arrowOffset
{
  _arrowOffset = arrowOffset;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  self.layer.shadowOpacity = 0.0f;
}
@end
