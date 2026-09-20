//
// NSData+LGHelper.m
// LGHelper
//
// SPDX-License-Identifier: MIT
// Copyright (c) 2015 Grigorii Lutkov <grigorii@lutkov.dev>
//

#import "NSData+LGHelper.h"
#import "LGHelper.h"

@implementation NSData (LGHelper)

#pragma mark - MD5 hash

- (NSString *)md5Hash
{
    return [LGHelper md5HashFromData:self];
}

#pragma mark - SHA hash

- (NSString *)sha1Hash
{
    return [LGHelper sha1HashFromData:self];
}

- (NSString *)sha224Hash
{
    return [LGHelper sha224HashFromData:self];
}

- (NSString *)sha256Hash
{
    return [LGHelper sha256HashFromData:self];
}

- (NSString *)sha384Hash
{
    return [LGHelper sha384HashFromData:self];
}

- (NSString *)sha512Hash
{
    return [LGHelper sha512HashFromData:self];
}

#pragma mark - XOR Crypto

- (NSData *)xorCryptedWithKey:(NSString *)key
{
    return [LGHelper xorCryptedData:self key:key];
}

#pragma mark - AES Crypto

- (NSData *)aes128EncryptedDataWithKey:(NSString *)key
{
    return [LGHelper aes128EncryptedData:self key:key];
}

- (NSData *)aes128DecryptedDataWithKey:(NSString *)key
{
    return [LGHelper aes128DecryptedData:self key:key];
}

- (NSData *)aes192EncryptedDataWithKey:(NSString *)key
{
    return [LGHelper aes192EncryptedData:self key:key];
}

- (NSData *)aes192DecryptedDataWithKey:(NSString *)key
{
    return [LGHelper aes192DecryptedData:self key:key];
}

- (NSData *)aes256EncryptedDataWithKey:(NSString *)key
{
    return [LGHelper aes256EncryptedData:self key:key];
}

- (NSData *)aes256DecryptedDataWithKey:(NSString *)key
{
    return [LGHelper aes256DecryptedData:self key:key];
}

#pragma mark - GZIP

- (NSData *)gZippedDataWithCompressionLevel:(float)level
{
    return [LGHelper gZippedData:self compressionLevel:level];
}

- (NSData *)gZippedData
{
    return [LGHelper gZippedData:self];
}

- (NSData *)gUnZippedData
{
    return [LGHelper gUnZippedData:self];
}

@end
