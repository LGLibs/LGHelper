//
// NSMutableString+LGHelper.m
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import "NSMutableString+LGHelper.h"

@implementation NSMutableString (LGHelper)

#pragma mark -

- (NSUInteger)replaceOccurrencesOfString:(NSString *)target withString:(NSString *)replacement
{
    return [self replaceOccurrencesOfString:target withString:replacement options:0 range:NSMakeRange(0, self.length)];
}

@end
