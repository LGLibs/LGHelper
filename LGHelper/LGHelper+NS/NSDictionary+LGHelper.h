//
// NSDictionary+LGHelper.h
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import <Foundation/Foundation.h>

@interface NSDictionary (LGHelper)

- (NSDictionary *)dictionaryByRemovingNullObjects;

@end
