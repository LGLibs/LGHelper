//
// NSDictionary+LGHelper.m
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import "NSDictionary+LGHelper.h"
#import "NSArray+LGHelper.h"

@implementation NSDictionary (LGHelper)

#pragma mark -

- (NSDictionary *)dictionaryByRemovingNullObjects
{
    const NSMutableDictionary *replaced = [self mutableCopy];
    const id nul = [NSNull null];

    for (NSString *key in self)
    {
        id object = [self objectForKey:key];

        if (object == nul)
            [replaced removeObjectForKey:key];
        else if ([object isKindOfClass:[NSDictionary class]])
            [replaced setObject:[object dictionaryByRemovingNullObjects] forKey:key];
        else if ([object isKindOfClass:[NSArray class]])
            [replaced setObject:[object arrayByRemovingNullObjects] forKey:key];
    }

    return [replaced copy];
}

@end
