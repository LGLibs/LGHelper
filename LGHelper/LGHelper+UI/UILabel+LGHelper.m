//
// UILabel+LGHelper.m
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import "UILabel+LGHelper.h"

@implementation UILabel (LGHelper)

- (CGSize)sizeThatFits:(CGSize)size maxNumberOfLines:(NSUInteger)numberOfLines
{
    CGSize sizeThatFits = [self sizeThatFits:size];

    if (sizeThatFits.height > self.font.lineHeight*numberOfLines)
        sizeThatFits.height = self.font.lineHeight*numberOfLines;

    return sizeThatFits;
}

@end
