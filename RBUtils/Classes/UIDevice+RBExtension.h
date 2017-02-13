//
//  UIDevice+RBExtension.h
//  Pods
//
//  Created by baxiang on 2017/2/13.
//
//

#import <UIKit/UIKit.h>

@interface UIDevice (RBExtension)
// Model of Device
+ (nullable NSString *)deviceModel;

// Device Name
+ (nullable NSString *)deviceName;

// System Name
+ (nullable NSString *)systemName;

// System Version
+ (nullable NSString *)systemVersion;

// System Device Type (iPhone1,0) (Formatted = iPhone 1)
+ (nullable NSString *)systemDeviceTypeFormatted:(BOOL)formatted;

// Get the Screen Width (X)
+ (NSInteger)screenWidth;

// Get the Screen Height (Y)
+ (NSInteger)screenHeight;

+ (NSDictionary *)currentWifiSSID;


@end
