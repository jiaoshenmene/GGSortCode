//
//  StringStudy.m
//  StringStudy
//
//  Created by dujia on 16/9/7.
//  Copyright © 2016年 dujia. All rights reserved.
//

#import "StringStudy.h"
#import "NSString+Utility.h"

@implementation StringStudy

+ (void)startString
{
    NSString *str = @"k\n.oi";
    NSString *tmp = [str stringContainsArray:@[@".",@","]];
    NSLog(@"tmp = %@",tmp);
}

@end
