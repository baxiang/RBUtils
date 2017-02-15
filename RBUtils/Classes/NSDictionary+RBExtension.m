//
//  NSDictionary+RBExtension.m
//  Pods
//
//  Created by baxiang on 2017/2/15.
//
//

#import "NSDictionary+RBExtension.h"

@implementation NSDictionary (RBExtension)



-(id)objectForKey:(NSString*)key defaultValue:(id)defaultValue
{
    if ([self isKindOfClass:[NSDictionary class]] && self != nil) {
       id  value = [self objectForKey:key];
        if (!value) {
            return defaultValue;
        }
         return value;
    }
    return defaultValue;
}

@end
