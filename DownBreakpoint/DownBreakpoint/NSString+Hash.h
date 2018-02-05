//
//  ViewController.m
//  DownBreakpoint
//
//  Created by hkqx on 2018/2/5.
//  Copyright © 2018年 hkqx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Hash)

@property (readonly) NSString *md5String;
@property (readonly) NSString *sha1String;
@property (readonly) NSString *sha256String;
@property (readonly) NSString *sha512String;

- (NSString *)hmacSHA1StringWithKey:(NSString *)key;
- (NSString *)hmacSHA256StringWithKey:(NSString *)key;
- (NSString *)hmacSHA512StringWithKey:(NSString *)key;

@end
