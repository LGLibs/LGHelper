//
// UIScrollView+LGHelper.h
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import <UIKit/UIKit.h>

@interface UIScrollView (LGHelper)

@property (assign, nonatomic) CGFloat contentSizeWidth;
@property (assign, nonatomic) CGFloat contentSizeHeight;
@property (assign, nonatomic) CGFloat contentInsetTop;
@property (assign, nonatomic) CGFloat contentInsetBottom;
@property (assign, nonatomic) CGFloat contentInsetLeft;
@property (assign, nonatomic) CGFloat contentInsetRight;
@property (assign, nonatomic) CGFloat contentOffsetX;
@property (assign, nonatomic) CGFloat contentOffsetY;
@property (assign, nonatomic) CGFloat scrollIndicatorInsetTop;
@property (assign, nonatomic) CGFloat scrollIndicatorInsetBottom;
@property (assign, nonatomic) CGFloat scrollIndicatorInsetLeft;
@property (assign, nonatomic) CGFloat scrollIndicatorInsetRight;

- (void)setContentSizeWidth:(CGFloat)width;
- (void)setContentSizeHeight:(CGFloat)height;

- (void)setContentInsetTop:(CGFloat)topInset;
- (void)setContentInsetBottom:(CGFloat)bottomInset;
- (void)setContentInsetLeft:(CGFloat)leftInset;
- (void)setContentInsetRight:(CGFloat)rightInset;

- (void)setContentOffsetX:(CGFloat)contentOffsetX animated:(BOOL)animated;
- (void)setContentOffsetX:(CGFloat)contentOffsetX;
- (void)setContentOffsetY:(CGFloat)contentOffsetY animated:(BOOL)animated;
- (void)setContentOffsetY:(CGFloat)contentOffsetY;

- (void)setContentAndScrollIndicatorInsetTop:(CGFloat)topInset;
- (void)setContentAndScrollIndicatorInsetBottom:(CGFloat)bottomInset;
- (void)setContentAndScrollIndicatorInsetLeft:(CGFloat)leftInset;
- (void)setContentAndScrollIndicatorInsetRight:(CGFloat)rightInset;

- (void)setScrollIndicatorInsetTop:(CGFloat)topInset;
- (void)setScrollIndicatorInsetBottom:(CGFloat)bottomInset;
- (void)setScrollIndicatorInsetLeft:(CGFloat)leftInset;
- (void)setScrollIndicatorInsetRight:(CGFloat)rightInset;

- (void)scrollRectToVisible:(CGRect)rect edgeInsets:(UIEdgeInsets)edgeInsets animated:(BOOL)animated;
- (void)scrollFirstResponderToVisibleAnimated:(BOOL)animated;
- (void)scrollFirstResponderToVisibleWithEdgeInsets:(UIEdgeInsets)edgeInsets animated:(BOOL)animated;

@end
