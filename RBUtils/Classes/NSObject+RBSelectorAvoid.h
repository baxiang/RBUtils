//
//  NSObject+RBSelectorAvoid.h
//  Pods
//
//  Created by baxiang on 2017/2/15.
//
//

#import <Foundation/Foundation.h>

@interface NSObject (RBSelectorAvoid)



/** @brief Created by zhikuiyu
 是否是可变数组
 */
- (BOOL)mIsDictionary;
/** @brief Created by zhikuiyu
 数据的键值对的个数
 */
- (NSUInteger)mCount;
/** @brief Created by zhikuiyu
 根据key 获取object
 */
- (id)mObjectForKey:(id)aKey;

- (id)stringForKey:(id)aKey;


#pragma mark -  NSMutableDictionary

/** @brief Created by zhikuiyu
 是否是可变数组
 */
- (BOOL)mIsMutableDictionary;
/** @brief Created by zhikuiyu
 数据的键值对的个数
 */
- (void)mRemoveObjectForKey:(id)aKey;
/** @brief Created by zhikuiyu
 设置key value 值
 
 */
- (void)mSetObject:(id)anObject forKey:(id <NSCopying>)aKey;


- (void)mSetValue:(id)value forKey:(NSString *)key ;


#pragma mark - NSArray

/** @brief Created by zhikuiyu
 是否是数组
 */
- (BOOL)mIsArray;

#pragma mark - NSMutableArray

/** @brief Created by zhikuiyu
 是否是可变数组
 */
- (BOOL)mIsMutableArray;
/** @brief Created by zhikuiyu
 数据添加元素
 */
- (void)mAddObject:(id)anObject;
/** @brief Created by zhikuiyu
 在index 索引上插入一个元素
 */
- (void)mInsertObject:(id)anObject atIndex:(int)index;
/** @brief Created by zhikuiyu
 在index 索引上移除一个元素
 */
- (void)mRemoveObjectAtIndex:(int)index;
/** @brief Created by zhikuiyu
 替换 index 元素
 */
- (void)mReplaceObjectAtIndex:(int)index withObject:(id)anObject;

/** @brief Created by zhikuiyu
 获取index 上元素
 */
- (id)mObjectAtIndex:(NSUInteger)index;



#pragma mark - NSString

/** @brief Created by zhikuiyu
 是否是string 类型
 */
- (BOOL)mIsStr;
/** @brief Created by zhikuiyu
 获取string 的长度
 */
- (NSUInteger)mStrLength;


/**
 *  获取字符串的长度（中英文同一个单位）
 *
 *  @param strtemp 字符串
 *
 *  @return 长度
 */
- (NSUInteger)mIntLength;
/** @brief Created by zhikuiyu
 根据索引获取 char
 */
- (unichar)mCharAtIndex:(int)index;
/** @brief Created by zhikuiyu
 根据 Range 获取 char *
 */
- (void)mGetCharacters:(unichar *)buffer range:(NSRange)aRange;
/** @brief Created by zhikuiyu
 从form 截取后面的字符串
 */
- (NSString *)mSubstringFromIndex:(int)from;
/** @brief Created by zhikuiyu
 截取字符串到 to 的索引
 */
- (NSString *)mSubstringToIndex:(int)to;
/** @brief Created by zhikuiyu
 截取字符串 根据 Range
 */
- (NSString *)mSubstringWithRange:(NSRange)range;

/**
 *	@brief	判断是否存在对象字符
 */
- (BOOL) containsObjectCharacter;


#pragma mark - NSNumber
/**
 *  是NSNumber 类型 ( @Kuiyu_Zhi  on 2014-04-08 )
 */
- (BOOL)mIsNum;



@end
