//
// UIScrollView+LGHelper.m
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import "UIScrollView+LGHelper.h"
#import "LGHelper.h"

@implementation UIScrollView (LGHelper)

#pragma mark - Content Size Width

- (void)setContentSizeWidth:(CGFloat)width
{
    self.contentSize = CGSizeMake(width, self.contentSize.height);
}

- (CGFloat)contentSizeWidth
{
    return self.contentSize.width;
}

#pragma mark - Content Size Width

- (void)setContentSizeHeight:(CGFloat)height
{
    self.contentSize = CGSizeMake(self.contentSize.width, height);
}

- (CGFloat)contentSizeHeight
{
    return self.contentSize.height;
}

#pragma mark - Content Inset Top

- (void)setContentInsetTop:(CGFloat)topInset
{
    UIEdgeInsets insets = self.contentInset;
    insets.top = topInset;
    self.contentInset = insets;
}

- (CGFloat)contentInsetTop
{
    return self.contentInset.top;
}

#pragma mark - Content Inset Bottom

- (void)setContentInsetBottom:(CGFloat)bottomInset
{
    UIEdgeInsets insets = self.contentInset;
    insets.bottom = bottomInset;
    self.contentInset = insets;
}

- (CGFloat)contentInsetBottom
{
    return self.contentInset.bottom;
}

#pragma mark - Content Inset Left

- (void)setContentInsetLeft:(CGFloat)leftInset
{
    UIEdgeInsets insets = self.contentInset;
    insets.left = leftInset;
    self.contentInset = insets;
}

- (CGFloat)contentInsetLeft
{
    return self.contentInset.left;
}

#pragma mark - Content Inset Right

- (void)setContentInsetRight:(CGFloat)rightInset
{
    UIEdgeInsets insets = self.contentInset;
    insets.right = rightInset;
    self.contentInset = insets;
}

- (CGFloat)contentInsetRight
{
    return self.contentInset.right;
}

#pragma mark - Content Offset X

- (void)setContentOffsetX:(CGFloat)contentOffsetX animated:(BOOL)animated
{
    CGPoint offset = self.contentOffset;
    offset.x = contentOffsetX;
    [self setContentOffset:offset animated:animated];
}

- (void)setContentOffsetX:(CGFloat)contentOffsetX
{
    [self setContentOffsetX:contentOffsetX animated:NO];
}

- (CGFloat)contentOffsetX
{
    return self.contentOffset.x;
}

#pragma mark - Content Offset Y

- (void)setContentOffsetY:(CGFloat)contentOffsetY animated:(BOOL)animated
{
    CGPoint offset = self.contentOffset;
    offset.y = contentOffsetY;
    [self setContentOffset:offset animated:animated];
}

- (void)setContentOffsetY:(CGFloat)contentOffsetY
{
    [self setContentOffsetY:contentOffsetY animated:NO];
}

- (CGFloat)contentOffsetY
{
    return self.contentOffset.y;
}

#pragma mark - Content And Scroll Indicator Inset Top

- (void)setContentAndScrollIndicatorInsetTop:(CGFloat)topInset
{
    [self setContentInsetTop:topInset];
    [self setScrollIndicatorInsetTop:topInset];
}

#pragma mark - Content And Scroll Indicator Inset Bottom

- (void)setContentAndScrollIndicatorInsetBottom:(CGFloat)bottomInset
{
    [self setContentInsetBottom:bottomInset];
    [self setScrollIndicatorInsetBottom:bottomInset];
}

#pragma mark - Content And Scroll Indicator Inset Left

- (void)setContentAndScrollIndicatorInsetLeft:(CGFloat)leftInset
{
    [self setContentInsetLeft:leftInset];
    [self setScrollIndicatorInsetLeft:leftInset];
}

#pragma mark - Content And Scroll Indicator Inset Right

- (void)setContentAndScrollIndicatorInsetRight:(CGFloat)rightInset
{
    [self setContentInsetRight:rightInset];
    [self setScrollIndicatorInsetRight:rightInset];
}

#pragma mark - Scroll Indicator Inset Top

- (void)setScrollIndicatorInsetTop:(CGFloat)topInset
{
    UIEdgeInsets insets = self.scrollIndicatorInsets;
    insets.top = topInset;
    self.scrollIndicatorInsets = insets;
}

- (CGFloat)scrollIndicatorInsetTop
{
    return self.scrollIndicatorInsets.top;
}

#pragma mark - Scroll Indicator Inset Bottom

- (void)setScrollIndicatorInsetBottom:(CGFloat)bottomInset
{
    UIEdgeInsets insets = self.scrollIndicatorInsets;
    insets.bottom = bottomInset;
    self.scrollIndicatorInsets = insets;
}

- (CGFloat)scrollIndicatorInsetBottom
{
    return self.scrollIndicatorInsets.bottom;
}

#pragma mark - Scroll Indicator Inset Left

- (void)setScrollIndicatorInsetLeft:(CGFloat)leftInset
{
    UIEdgeInsets insets = self.scrollIndicatorInsets;
    insets.left = leftInset;
    self.scrollIndicatorInsets = insets;
}

- (CGFloat)scrollIndicatorInsetLeft
{
    return self.scrollIndicatorInsets.left;
}

#pragma mark - Scroll Indicator Inset Right

- (void)setScrollIndicatorInsetRight:(CGFloat)rightInset
{
    UIEdgeInsets insets = self.scrollIndicatorInsets;
    insets.right = rightInset;
    self.scrollIndicatorInsets = insets;
}

- (CGFloat)scrollIndicatorInsetRight
{
    return self.scrollIndicatorInsets.right;
}

#pragma mark -

- (void)scrollRectToVisible:(CGRect)rect edgeInsets:(UIEdgeInsets)edgeInsets animated:(BOOL)animated
{
    return [LGHelper scrollView:self scrollRectToVisible:rect edgeInsets:edgeInsets animated:animated];
}

- (void)scrollFirstResponderToVisibleAnimated:(BOOL)animated
{
    return [LGHelper scrollView:self scrollFirstResponderToVisibleAnimated:animated];
}

- (void)scrollFirstResponderToVisibleWithEdgeInsets:(UIEdgeInsets)edgeInsets animated:(BOOL)animated
{
    return [LGHelper scrollView:self scrollFirstResponderToVisibleWithEdgeInsets:edgeInsets animated:animated];
}

@end
