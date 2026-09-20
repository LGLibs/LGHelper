//
// UILabel+LGHelper.h
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import <UIKit/UIKit.h>

@interface UILabel (LGHelper)

- (CGSize)sizeThatFits:(CGSize)size maxNumberOfLines:(NSUInteger)numberOfLines;

@end
