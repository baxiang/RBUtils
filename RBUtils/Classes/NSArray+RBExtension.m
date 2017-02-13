//
//  NSArray+RBExtension.m
//  Pods
//
//  Created by baxiang on 2017/2/13.
//
//

#import "NSArray+RBExtension.h"

@implementation NSArray (RBExtension)


- (id)objectAtIndexOrNil:(NSUInteger)index {
    return (index < [self count]) ? self[index] : nil;
}
@end
