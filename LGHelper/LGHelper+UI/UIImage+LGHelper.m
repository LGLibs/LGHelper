//
// UIImage+LGHelper.m
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import "UIImage+LGHelper.h"

@implementation UIImage (LGHelper)

- (UIImage *)imageWithOrientationExifFix
{
    return [LGHelper imageWithOrientationExifFix:self];
}

+ (UIImage *)image1x1WithColor:(UIColor *)color
{
    return [LGHelper image1x1WithColor:color];
}

- (UIImage *)imageWithAlpha:(CGFloat)alpha
{
    return [LGHelper image:self withAlpha:alpha];
}

- (UIImage *)imageWithColor:(UIColor *)color
{
    return [LGHelper image:self withColor:color];
}

- (UIImage *)imageBlackAndWhite
{
    return [LGHelper imageBlackAndWhite:self];
}

- (UIImage *)imageScaledToSize:(CGSize)size scalingMode:(LGImageScalingMode)scalingMode
{
    return [LGHelper image:self scaleToSize:size scalingMode:scalingMode];
}

- (UIImage *)imageScaledToSize:(CGSize)size scalingMode:(LGImageScalingMode)scalingMode backgroundColor:(UIColor *)backgroundColor
{
    return [LGHelper image:self scaleToSize:size scalingMode:scalingMode backgroundColor:backgroundColor];
}

- (UIImage *)imageScaledWithMultiplier:(float)multiplier
{
    return [LGHelper image:self scaleWithMultiplier:multiplier];
}

- (UIImage *)imageRoundedWithRadius:(CGFloat)radius
{
    return [LGHelper image:self roundWithRadius:radius];
}

- (UIImage *)imageRoundedWithRadius:(CGFloat)radius backgroundColor:(UIColor *)backgroundColor
{
    return [LGHelper image:self roundWithRadius:radius backgroundColor:backgroundColor];
}

- (UIImage *)imageCroppedCenterWithSize:(CGSize)size
{
    return [LGHelper image:self cropCenterWithSize:size];
}

- (UIImage *)imageCroppedCenterWithSize:(CGSize)size backgroundColor:(UIColor *)backgroundColor
{
    return [LGHelper image:self cropCenterWithSize:size backgroundColor:backgroundColor];
}

- (UIImage *)imageWithMaskImage:(UIImage *)maskImage
{
    return [LGHelper image:self withMaskImage:maskImage];
}

+ (UIImage *)imageFromView:(UIView *)view inPixels:(BOOL)inPixels
{
    return [LGHelper screenshotMakeOfView:view inPixels:inPixels];
}

- (UIColor *)colorAtPixel:(CGPoint)point
{
    return [LGHelper image:self colorAtPixel:point];
}

@end
