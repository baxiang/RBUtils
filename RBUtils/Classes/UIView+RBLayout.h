//
//  UIView+RBLayout.h
//  Pods
//
//  Created by baxiang on 2017/2/13.
//
//

#import <UIKit/UIKit.h>

@interface UIView (RBLayout)
@property(nonatomic) CGFloat            left;   /** 左 */
@property(nonatomic) CGFloat            top;    /** 上 */
@property(nonatomic, readonly) CGFloat  right;  /** 右 */
@property(nonatomic, readonly) CGFloat  bottom; /** 下 */
@property(nonatomic) CGFloat            width;  /** 宽度 */
@property(nonatomic) CGFloat            height; /** 高度 */
@end
