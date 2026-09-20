//
// UIColor+LGHelper.h
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import <UIKit/UIKit.h>

@interface UIColor (LGHelper)

/** 0-255, 0-255, 0-255, 0.f-1.f */
+ (UIColor *)colorWithRGB_red:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue alpha:(CGFloat)alpha;
/** #000000 */
+ (UIColor *)colorWithHEX:(UInt32)hex;

/** #000000 */
- (NSUInteger)hex;

+ (UIColor *)colorMixedInRGB:(UIColor *)color1 andColor:(UIColor *)color2 percent:(CGFloat)percent;
+ (UIColor *)colorMixedInLAB:(UIColor *)color1 andColor:(UIColor *)color2 percent:(CGFloat)percent;

/** 0-255 */
- (UIColor *)darkerOnRGB:(NSUInteger)k;
/** 0-255 */
- (UIColor *)lighterOnRGB:(NSUInteger)k;
/** 0.f-1.f */
- (UIColor *)darkerOn:(CGFloat)k;
/** 0.f-1.f */
- (UIColor *)lighterOn:(CGFloat)k;
/** 0.f-100.f */
- (UIColor *)darkerOnPercent:(CGFloat)percent;
/** 0.f-100.f */
- (UIColor *)lighterOnPercent:(CGFloat)percent;

- (NSArray *)convertedRGBtoXYZ;
- (NSArray *)convertedRGBtoLAB;

+ (NSArray *)colorConvertRGBtoXYZ:(UIColor *)color;
+ (NSArray *)colorConvertRGBtoLAB:(UIColor *)color;
+ (NSArray *)colorConvertXYZtoLAB:(NSArray *)xyzArray;
+ (NSArray *)colorConvertLABtoXYZ:(NSArray *)labArray;
+ (UIColor *)colorConvertXYZtoRGB:(NSArray *)xyzArray;
+ (UIColor *)colorConvertLABtoRGB:(NSArray *)labArray;

@end
