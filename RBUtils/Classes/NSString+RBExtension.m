//
//  NSString+RBExtension.m
//  Pods
//
//  Created by baxiang on 2017/2/13.
//
//

#import "NSString+RBExtension.h"
#import "NSData+RBExtension.h"
@implementation NSString (RBExtension)
- (NSString *)md5String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] md5String];
}

@end
