//
// NSDate+LGHelper.h
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import <Foundation/Foundation.h>

@interface NSDate (LGHelper)

- (NSString *)stringWithDateFormat:(NSString *)dateFormat;
- (NSString *)stringWithDateFormat:(NSString *)dateFormat secondsFromGMT:(NSTimeInterval)secondsFromGMT;
- (NSString *)stringWithDateFormat:(NSString *)dateFormat timeZoneName:(NSString *)timeZoneName;
- (NSString *)stringWithDateFormat:(NSString *)dateFormat timeZoneAbbreviation:(NSString *)timeZoneAbbreviation;
- (NSString *)stringWithDateFormat:(NSString *)dateFormat localeIdentifier:(NSString *)localeIdentifier;

+ (NSDate *)dateFromString:(NSString *)string dateFormat:(NSString *)dateFormat;
+ (NSDate *)dateFromString:(NSString *)string dateFormat:(NSString *)dateFormat timeZoneName:(NSString *)timeZoneName;
+ (NSDate *)dateFromString:(NSString *)string dateFormat:(NSString *)dateFormat timeZoneAbbreviation:(NSString *)timeZoneAbbreviation;
+ (NSDate *)dateFromString:(NSString *)string dateFormat:(NSString *)dateFormat localeIdentifier:(NSString *)localeIdentifier;

- (NSString *)stringWithElapsedTime;

- (NSString *)day_dd;
- (NSString *)day_EEEE;
- (NSString *)dayWeek;
- (NSString *)month_MM;
- (NSString *)month_MMM;
- (NSString *)month_MMMM;
- (NSString *)year;
- (NSString *)hour;
- (NSString *)minute;
- (NSString *)second;
- (NSString *)millisecond;

@end
