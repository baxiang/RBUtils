//
//  UIImage+RBExtension.h
//  Pods
//
//  Created by baxiang on 2017/2/13.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (RBExtension)

#pragma mark ------------------- 根据颜色创建图片 ------------------------
#pragma mark - 根据颜色创建图片
- (UIImage *) imageWithTintColor:(UIColor *)tintColor;
#pragma mark - 根据颜色创建图片
- (UIImage *) imageWithGradientTintColor:(UIColor *)tintColor;

+ (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size;
#pragma mark - 等比压缩
+ (UIImage *) imageCompressForSize:(UIImage *)sourceImage targetSize:(CGSize)size;

+ (UIImage*)getSubImage:(UIImage *)image mCGRect:(CGRect)mCGRect centerBool:(BOOL)centerBool;
#pragma mark - 获取圆角图片
-(UIImage*) circleImage;
@end
