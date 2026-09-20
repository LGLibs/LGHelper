//
// UIImage+LGHelper.h
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import <UIKit/UIKit.h>
#import "LGHelper.h"

@interface UIImage (LGHelper)

- (UIImage *)imageWithOrientationExifFix;
+ (UIImage *)image1x1WithColor:(UIColor *)color;
- (UIImage *)imageWithAlpha:(CGFloat)alpha;
- (UIImage *)imageWithColor:(UIColor *)color;
- (UIImage *)imageBlackAndWhite;
- (UIImage *)imageScaledToSize:(CGSize)size scalingMode:(LGImageScalingMode)scalingMode;
- (UIImage *)imageScaledToSize:(CGSize)size scalingMode:(LGImageScalingMode)scalingMode backgroundColor:(UIColor *)backgroundColor;
- (UIImage *)imageScaledWithMultiplier:(float)multiplier;
- (UIImage *)imageRoundedWithRadius:(CGFloat)radius;
- (UIImage *)imageRoundedWithRadius:(CGFloat)radius backgroundColor:(UIColor *)backgroundColor;
- (UIImage *)imageCroppedCenterWithSize:(CGSize)size;
- (UIImage *)imageCroppedCenterWithSize:(CGSize)size backgroundColor:(UIColor *)backgroundColor;
- (UIImage *)imageWithMaskImage:(UIImage *)maskImage;
+ (UIImage *)imageFromView:(UIView *)view inPixels:(BOOL)inPixels;
- (UIColor *)colorAtPixel:(CGPoint)point;

@end
