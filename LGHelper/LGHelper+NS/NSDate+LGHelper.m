//
// NSDate+LGHelper.m
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import "NSDate+LGHelper.h"

@implementation NSDate (LGHelper)

- (NSString *)stringWithDateFormat:(NSString *)dateFormat
{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateFormat = dateFormat;

    return [dateFormatter stringFromDate:self];
}

- (NSString *)stringWithDateFormat:(NSString *)dateFormat secondsFromGMT:(NSTimeInterval)secondsFromGMT
{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateFormat = dateFormat;
    dateFormatter.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:secondsFromGMT];

    return [dateFormatter stringFromDate:self];
}

- (NSString *)stringWithDateFormat:(NSString *)dateFormat timeZoneName:(NSString *)timeZoneName
{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateFormat = dateFormat;
    dateFormatter.timeZone = [NSTimeZone timeZoneWithName:timeZoneName];

    return [dateFormatter stringFromDate:self];
}

- (NSString *)stringWithDateFormat:(NSString *)dateFormat timeZoneAbbreviation:(NSString *)timeZoneAbbreviation
{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateFormat = dateFormat;
    dateFormatter.timeZone = [NSTimeZone timeZoneWithAbbreviation:timeZoneAbbreviation];

    return [dateFormatter stringFromDate:self];
}

- (NSString *)stringWithDateFormat:(NSString *)dateFormat localeIdentifier:(NSString *)localeIdentifier
{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateFormat = dateFormat;
    dateFormatter.locale = [NSLocale localeWithLocaleIdentifier:localeIdentifier];

    return [dateFormatter stringFromDate:self];
}

#pragma mark -

+ (NSDate *)dateFromString:(NSString *)string dateFormat:(NSString *)dateFormat
{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateFormat = dateFormat;

    return [dateFormatter dateFromString:string];
}

+ (NSDate *)dateFromString:(NSString *)string dateFormat:(NSString *)dateFormat timeZoneName:(NSString *)timeZoneName
{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateFormat = dateFormat;
    dateFormatter.timeZone = [NSTimeZone timeZoneWithName:timeZoneName];

    return [dateFormatter dateFromString:string];
}

+ (NSDate *)dateFromString:(NSString *)string dateFormat:(NSString *)dateFormat timeZoneAbbreviation:(NSString *)timeZoneAbbreviation
{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateFormat = dateFormat;
    dateFormatter.timeZone = [NSTimeZone timeZoneWithAbbreviation:timeZoneAbbreviation];

    return [dateFormatter dateFromString:string];
}

+ (NSDate *)dateFromString:(NSString *)string dateFormat:(NSString *)dateFormat localeIdentifier:(NSString *)localeIdentifier
{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateFormat = dateFormat;
    dateFormatter.locale = [NSLocale localeWithLocaleIdentifier:localeIdentifier];

    return [dateFormatter dateFromString:string];
}

#pragma mark -

- (NSString *)stringWithElapsedTime
{
    NSTimeInterval elapsedTime = [[NSDate date] timeIntervalSinceDate:self];

    int seconds = (int)elapsedTime;
    int minutes = seconds / 60;
    int hours = minutes / 60;
    int days = hours / 24;
    int week = days / 7;

    if (week > 0)
        return [NSString stringWithFormat:@"%d н", week];
    else if (days > 0)
        return [NSString stringWithFormat:@"%d д", days];
    else if (hours > 0)
        return [NSString stringWithFormat:@"%d ч", hours];
    else if (minutes > 0)
        return [NSString stringWithFormat:@"%d м", minutes];
    else
        return [NSString stringWithFormat:@"%d с", seconds];
}

#pragma mark -

- (NSString *)day_dd
{
    return [self stringWithDateFormat:@"dd"];
}

- (NSString *)day_EEEE
{
    return [self stringWithDateFormat:@"EEEE"];
}

- (NSString *)dayWeek
{
    return [self day_EEEE];
}

- (NSString *)month_MM
{
    return [self stringWithDateFormat:@"MM"];
}

- (NSString *)month_MMM
{
    return [self stringWithDateFormat:@"MMM"];
}

- (NSString *)month_MMMM
{
    return [self stringWithDateFormat:@"MMMM"];
}

- (NSString *)year
{
    return [self stringWithDateFormat:@"yyyy"];
}

- (NSString *)hour
{
    return [self stringWithDateFormat:@"HH"];
}

- (NSString *)minute
{
    return [self stringWithDateFormat:@"mm"];
}

- (NSString *)second
{
    return [self stringWithDateFormat:@"ss"];
}

- (NSString *)millisecond
{
    return [self stringWithDateFormat:@"SSS"];
}

@end
