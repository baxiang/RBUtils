//
//  UIColor+RBExtension.h
//  Pods
//
//  Created by baxiang on 2017/2/14.
//
//

#import <UIKit/UIKit.h>

#ifndef UIColorHex
#define UIColorHex(_hex_)   [UIColor colorWithHexString:((__bridge NSString *)CFSTR(#_hex_))]
#endif

@interface UIColor (RBExtension)
+ (nullable UIColor *)colorWithHexString:(NSString *)hexStr;
@end
