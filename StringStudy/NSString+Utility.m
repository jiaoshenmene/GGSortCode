//
//  NSString+Utility.m
//  GGSortCode
//
//  Created by dujia on 16/9/7.
//  Copyright © 2016年 dujia. All rights reserved.
//

#import "NSString+Utility.h"

@implementation NSString (Utility)
- (NSString *)stringContainsArray:(NSArray *)array
{
    __block NSRange lastSymbolRange = NSMakeRange(0, 0);
    [self enumerateSubstringsInRange:NSMakeRange(0, self.length)
                             options:NSStringEnumerationByComposedCharacterSequences
                          usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop)
     {
         if ([array containsObject:substring]) {
             lastSymbolRange = substringRange;
         }
         
         
     }];
    if (lastSymbolRange.location < self.length - 1) {
        return [self substringWithRange:NSMakeRange(lastSymbolRange.location + 1, self.length - lastSymbolRange.location - 1)];
    }else{
        return @"";
    }
}

@end
