//
// NSArray+LGHelper.m
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import "NSArray+LGHelper.h"
#import "NSDictionary+LGHelper.h"

@implementation NSArray (LGHelper)

#pragma mark -

- (NSArray *)arrayByRemovingNullObjects
{
    NSMutableArray *replaced = [self mutableCopy];
    const id nul = [NSNull null];

    NSUInteger iMax = [replaced count];

    for (NSUInteger i = 0; i < iMax; i++)
    {
        id object = [replaced objectAtIndex:i];

        if (object == nul)
        {
            [replaced removeObjectAtIndex:i];
            i--;
            iMax--;
        }
        else if ([object isKindOfClass:[NSDictionary class]])
            [replaced replaceObjectAtIndex:i withObject:[object dictionaryByRemovingNullObjects]];
        else if ([object isKindOfClass:[NSArray class]])
            [replaced replaceObjectAtIndex:i withObject:[object arrayByRemovingNullObjects]];
    }

    return [replaced copy];
}

@end
