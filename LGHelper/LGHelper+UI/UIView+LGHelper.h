//
// UIView+LGHelper.h
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import <UIKit/UIKit.h>

@interface UIView (LGHelper)

@property (assign, nonatomic) CGSize  size;
@property (assign, nonatomic) CGPoint origin;
@property (assign, nonatomic) CGFloat width;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat originX;
@property (assign, nonatomic) CGFloat originY;
@property (assign, nonatomic) CGFloat centerX;
@property (assign, nonatomic) CGFloat centerY;

- (void)setFrame:(CGRect)frame integral:(BOOL)integral;
- (void)setOrigin:(CGPoint)origin integral:(BOOL)integral;
- (void)setOriginX:(CGFloat)x integral:(BOOL)integral;
- (void)setOriginY:(CGFloat)y integral:(BOOL)integral;

- (void)setSize:(CGSize)size integral:(BOOL)integral;
- (void)setWidth:(CGFloat)width integral:(BOOL)integral;
- (void)setHeight:(CGFloat)height integral:(BOOL)integral;

- (void)setCenter:(CGPoint)center integral:(BOOL)integral;
- (void)setCenterX:(CGFloat)centerX integral:(BOOL)integral;
- (void)setCenterY:(CGFloat)centerY integral:(BOOL)integral;

- (CGFloat)bottomY;
- (CGFloat)rightX;

- (void)makeIntegral;
- (void)sizeInvalidate;

- (void)setAllSubviewsHidden:(BOOL)hidden exept:(NSArray *)viewsArray;
- (void)setAllSubviewsAlpha:(CGFloat)alpha exept:(NSArray *)viewsArray;

- (UIView *)firstResponder;

@end
