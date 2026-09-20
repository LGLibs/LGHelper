//
// UIColor+LGHelper.m
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import "UIColor+LGHelper.h"
#import "LGHelper.h"

@implementation UIColor (LGHelper)

#pragma mark -

/** 0-255, 0-255, 0-255, 0.f-1.f */
+ (UIColor *)colorWithRGB_red:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue alpha:(CGFloat)alpha
{
    return [LGHelper colorWithRGB_red:red green:green blue:blue alpha:alpha];
}

/** #000000 */
+ (UIColor *)colorWithHEX:(UInt32)hex
{
    return [LGHelper colorWithHEX:hex];
}

#pragma mark -

/** #000000 */
- (NSUInteger)hex
{
    return [LGHelper colorHEX:self];
}

#pragma mark -

+ (UIColor *)colorMixedInRGB:(UIColor *)color1 andColor:(UIColor *)color2 percent:(CGFloat)percent
{
    return [LGHelper colorMixedInRGB:color1 andColor:color2 percent:percent];
}

+ (UIColor *)colorMixedInLAB:(UIColor *)color1 andColor:(UIColor *)color2 percent:(CGFloat)percent
{
    return [LGHelper colorMixedInLAB:color1 andColor:color2 percent:percent];
}

#pragma mark -

/** 0-255 */
- (UIColor *)darkerOnRGB:(NSUInteger)k
{
    return [LGHelper color:self darkerOnRGB:k];
}

/** 0-255 */
- (UIColor *)lighterOnRGB:(NSUInteger)k
{
    return [LGHelper color:self lighterOnRGB:k];
}

/** 0.f-1.f */
- (UIColor *)darkerOn:(CGFloat)k
{
    return [LGHelper color:self darkerOn:k];
}

/** 0.f-1.f */
- (UIColor *)lighterOn:(CGFloat)k
{
    return [LGHelper color:self lighterOn:k];
}

/** 0.f-100.f */
- (UIColor *)darkerOnPercent:(CGFloat)percent
{
    return [LGHelper color:self darkerOnPercent:percent];
}

/** 0.f-100.f */
- (UIColor *)lighterOnPercent:(CGFloat)percent
{
    return [LGHelper color:self lighterOnPercent:percent];
}

#pragma mark -

- (NSArray *)convertedRGBtoXYZ
{
    return [LGHelper colorConvertRGBtoXYZ:self];
}

- (NSArray *)convertedRGBtoLAB
{
    return [LGHelper colorConvertRGBtoLAB:self];
}

#pragma mark -

+ (NSArray *)colorConvertRGBtoXYZ:(UIColor *)color
{
    return [LGHelper colorConvertRGBtoXYZ:color];
}

+ (NSArray *)colorConvertRGBtoLAB:(UIColor *)color
{
    return [LGHelper colorConvertRGBtoLAB:color];
}

+ (NSArray *)colorConvertXYZtoLAB:(NSArray *)xyzArray
{
    return [LGHelper colorConvertXYZtoLAB:xyzArray];
}

+ (NSArray *)colorConvertLABtoXYZ:(NSArray *)labArray
{
    return [LGHelper colorConvertLABtoXYZ:labArray];
}

+ (UIColor *)colorConvertXYZtoRGB:(NSArray *)xyzArray
{
    return [LGHelper colorConvertXYZtoRGB:xyzArray];
}

+ (UIColor *)colorConvertLABtoRGB:(NSArray *)labArray
{
    return [LGHelper colorConvertLABtoRGB:labArray];
}

@end
