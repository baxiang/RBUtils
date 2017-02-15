//
//  NSObject+RBSelectorAvoid.m
//  Pods
//
//  Created by baxiang on 2017/2/15.
//
//

#import "NSObject+RBSelectorAvoid.h"

@implementation NSObject (RBSelectorAvoid)


- (id)sObjectForKey:(id)key{
    id object = nil;
    if([self isKindOfClass:[NSDictionary class]]  ){
        object = [(NSDictionary *)self objectForKey:key];
        
    }else if ([self isKindOfClass:[NSUserDefaults class]]){
       object = [(NSUserDefaults *)self objectForKey:key];
    }
    return object;
}

@end
