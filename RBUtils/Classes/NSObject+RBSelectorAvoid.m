//
//  NSObject+RBSelectorAvoid.m
//  Pods
//
//  Created by baxiang on 2017/2/15.
//
//

#import "NSObject+RBSelectorAvoid.h"

@implementation NSObject (RBSelectorAvoid)


#pragma mark - Dictionary

/** @brief Created by zhikuiyu
 根据key 获取object
 */
- (id)mObjectForKey:(id)aKey
{
    id object = nil;
    
    if([self mIsDictionary] ){
        object = [(NSDictionary *)self objectForKey:aKey];
        
    }else if ([self isKindOfClass:[NSUserDefaults class]]){
        object = [(NSUserDefaults *)self objectForKey:aKey];
    }
    
    return object;
}

- (id)stringForKey:(id)aKey
{
    id object = @"";
    
    if([self mIsDictionary] && aKey!= nil && ![aKey isKindOfClass:[NSNull class]]) {
        
        NSString *string = [(NSDictionary *)self objectForKey: aKey];
        object = string && [string isKindOfClass: [NSString class]] && [string length] > 0 ? string : @"";
    }
    return object;
}

/** @brief Created by zhikuiyu
 是否是可变数组
 */
- (BOOL)mIsDictionary{
    if([self isKindOfClass:[NSDictionary class]] && self != nil){
        return YES;
    }
    return NO;
}
/** @brief Created by zhikuiyu
 数据的键值对的个数 和数组的长度
 */
- (NSUInteger)mCount
{
    if([self mIsDictionary]){
        return [(NSDictionary *)self count];
    }
    if([self mIsArray]){
        return [(NSArray *)self count];
    }
    return 0;
    
}

#pragma - mark NSMutableDictionary
/** @brief Created by zhikuiyu
 是否是可变数组
 */
- (BOOL)mIsMutableDictionary{
    if([self isKindOfClass:[NSMutableDictionary class]] && self != nil){
        return YES;
    }
    return NO;
}

/** @brief Created by zhikuiyu
 根据key 移除键值对
 */
- (void)mRemoveObjectForKey:(id)aKey
{
    if(aKey != nil && ![aKey isKindOfClass:[NSNull class]] && [self mIsMutableDictionary]){
        [(NSMutableDictionary *)self removeObjectForKey:aKey];
    }
    
}
/** @brief Created by zhikuiyu
 设置key value 值
 
 */
- (void)mSetObject:(id)anObject forKey:(id <NSCopying>)aKey
{
    if(anObject != nil  && ![anObject isKindOfClass:[NSNull class]] && aKey != nil && [self mIsMutableDictionary]){
        [(NSMutableDictionary *)self setObject:anObject forKey:aKey];
    }
}

- (void)mSetValue:(id)value forKey:(NSString *)key{
    if(value != nil && key != nil && [self mIsMutableDictionary]){
        [self setValue:value forKey:key];
    }
}

#pragma mark - NSArray

/** @brief Created by zhikuiyu
 是否是可变数组
 */
- (BOOL)mIsArray{
    if([self isKindOfClass:[NSArray class]] && self != nil){
        return YES;
    }
    return NO;
    
}

/** @brief Created by zhikuiyu
 获取index 上元素
 */
- (id)mObjectAtIndex:(NSUInteger)index
{
    if([self mIsArray] && index < [self mCount]){
        return [(NSArray *)self objectAtIndex:index];
    }
    return nil;
    
}

#pragma mark - NSMutableArray

/** @brief Created by zhikuiyu
 是否是可变数组
 */
- (BOOL)mIsMutableArray{
    if([self isKindOfClass:[NSMutableArray class]] && self != nil){
        return YES;
    }
    return NO;
    
}

/** @brief Created by zhikuiyu
 数据添加元素
 */
- (void)mAddObject:(id)anObject
{
    if([self mIsMutableArray] && self != nil && anObject != nil && ![anObject isKindOfClass:[NSNull class]] ){
        [(NSMutableArray *)self addObject:anObject];
    }
}

/** @brief Created by zhikuiyu
 在index 索引上插入一个元素
 */
- (void)mInsertObject:(id)anObject atIndex:(int)index
{
    if([self mIsMutableArray] && index >=0 && index <= [self mCount]  && anObject != nil && ![anObject isKindOfClass:[NSNull class]]){
        [(NSMutableArray *)self insertObject:anObject atIndex:index];
    }
}
/** @brief Created by zhikuiyu
 在index 索引上移除一个元素
 */
- (void)mRemoveObjectAtIndex:(int)index
{
    if([self mIsMutableArray] && index >=0 && index < [self mCount]){
        [(NSMutableArray *)self removeObjectAtIndex:index];
    }
    
}
/** @brief Created by zhikuiyu
 替换 index 元素
 */
- (void)mReplaceObjectAtIndex:(int)index withObject:(id)anObject
{
    if([self mIsMutableArray] && index >=0 && index < [self mCount] && anObject != nil && ![anObject isKindOfClass:[NSNull class]]){
        
        [(NSMutableArray *)self replaceObjectAtIndex:index withObject:anObject];
    }
}


#pragma  mark - NSString


/** @brief Created by zhikuiyu
 是否是string 类型
 */
- (BOOL)mIsStr
{
    if([self isKindOfClass:[NSString class]] && self != nil){
        return YES;
    }
    return NO;
}
/** @brief Created by zhikuiyu
 获取string 的长度
 */
- (NSUInteger)mStrLength
{
    if([self mIsStr]){
        return [(NSString *)self length];
    }
    return 0;
    
}

/**
 *  获取字符串的长度
 *
 *  @param strtemp 字符串
 *
 *  @return 字符串的长度
 */
- (NSUInteger)mIntLength
{
    NSInteger len = [(NSString*)self lengthOfBytesUsingEncoding:NSUnicodeStringEncoding];
    
    return len/2;
}



/** @brief Created by zhikuiyu
 根据索引获取 char
 */
- (unichar)mCharAtIndex:(int)index{
    if(index >= 0 && index < [self mStrLength]){
        return [(NSString *)self characterAtIndex:index];
    }
    return 0;
}


/** @brief Created by zhikuiyu
 根据 Range 获取 char *
 */
- (void)mGetCharacters:(unichar *)buffer range:(NSRange)aRange{
    if([self mStrLength] > (aRange.length + aRange.location)){
        [(NSString *)self getCharacters:buffer range:aRange];
    }
}

/** @brief Created by zhikuiyu
 从form 截取后面的字符串
 */
- (NSString *)mSubstringFromIndex:(int)from{
    if([self mStrLength] > from && from >= 0){
        return [(NSString *)self substringFromIndex:from];
    }
    return nil;
}
/** @brief Created by zhikuiyu
 截取字符串到 to 的索引
 */
- (NSString *)mSubstringToIndex:(int)to{
    if([self mStrLength] >= to && to > 0){
        return [(NSString *)self substringToIndex:to];
    }
    return nil;
    
}
/** @brief Created by zhikuiyu
 截取字符串 根据 Range
 */
- (NSString *)mSubstringWithRange:(NSRange)range{
    if([self mStrLength] >= (range.length + range.location)){
        return [(NSString *)self substringWithRange:range];
    }
    return nil;
}

/**
 *	@brief	判断是否存在对象字符
 */
- (BOOL) containsObjectCharacter {
    
    if (![self isKindOfClass: [NSString class]])
        return NO;
    
    int index = 0;
    NSString *string = (NSString *) self;
    while (index < [string length]) {
        
        NSString *character = [string substringWithRange: NSMakeRange(index, 1)];
        if ([character lengthOfBytesUsingEncoding: NSUTF8StringEncoding] == 3)
            return YES;
        index++;
    }
    
    return NO;
}

/**
 *  是NSNumber 类型 ( @Kuiyu_Zhi  on 2014-04-08 )
 */
- (BOOL)mIsNum{
    if([self isKindOfClass:[NSNumber class]] && self != nil){
        return YES;
    }
    return NO;
    
}

@end
