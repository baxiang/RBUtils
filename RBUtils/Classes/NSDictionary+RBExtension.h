//
//  NSDictionary+RBExtension.h
//  Pods
//
//  Created by baxiang on 2017/2/15.
//
//

#import <Foundation/Foundation.h>

@interface NSDictionary (RBExtension)
-(id)objectForKey:(NSString*)key defaultValue:(id)defaultValue;
@end
