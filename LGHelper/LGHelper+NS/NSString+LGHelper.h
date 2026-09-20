//
// NSString-LGHelper.h
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import <Foundation/Foundation.h>

@interface NSString (LGHelper)

- (BOOL)containsString:(NSString *)string;
- (NSRange)range;

+ (NSString *)stringWithObject:(id)object;
+ (NSString *)stringWithObjectReturnNil:(id)object;
+ (NSString *)stringWithObjectReturnEmpty:(id)object;

- (NSString *)stringByCapitalizingFirstLetter;
- (NSString *)stringByRemovingAllWhitespacesAndNewLine;
- (NSString *)stringByRemovingAllNumbers;
- (NSString *)stringByRemovingAllExeptNumbers;
- (NSString *)stringByRemovingAllExeptPhoneSymbols;
- (NSString *)stringByRemovingAllExeptSymbols:(NSString *)symbols;

#pragma mark - MD5 hash

- (NSString *)md5Hash;

#pragma mark - SHA hash

- (NSString *)sha1Hash;
- (NSString *)sha224Hash;
- (NSString *)sha256Hash;
- (NSString *)sha384Hash;
- (NSString *)sha512Hash;

#pragma mark - XOR Crypto

- (NSString *)xorCryptedWithKey:(NSString *)key;

@end
