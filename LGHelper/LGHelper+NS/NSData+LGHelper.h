//
// NSData+LGHelper.h
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import <Foundation/Foundation.h>

@interface NSData (LGHelper)

#pragma mark - MD5 hash

- (NSString *)md5Hash;

#pragma mark - SHA hash

- (NSString *)sha1Hash;
- (NSString *)sha224Hash;
- (NSString *)sha256Hash;
- (NSString *)sha384Hash;
- (NSString *)sha512Hash;

#pragma mark - XOR Crypto

- (NSData *)xorCryptedWithKey:(NSString *)key;

#pragma mark - AES Crypto

- (NSData *)aes128EncryptedDataWithKey:(NSString *)key;
- (NSData *)aes128DecryptedDataWithKey:(NSString *)key;
- (NSData *)aes192EncryptedDataWithKey:(NSString *)key;
- (NSData *)aes192DecryptedDataWithKey:(NSString *)key;
- (NSData *)aes256EncryptedDataWithKey:(NSString *)key;
- (NSData *)aes256DecryptedDataWithKey:(NSString *)key;

#pragma mark - GZIP

- (NSData *)gZippedDataWithCompressionLevel:(float)level;
- (NSData *)gZippedData;
- (NSData *)gUnZippedData;

@end
