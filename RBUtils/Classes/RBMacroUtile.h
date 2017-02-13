//
//  RBMacroUtile.h
//  Pods
//
//  Created by baxiang on 2017/2/13.
//
//

#ifndef RBMacroUtile_h
#define RBMacroUtile_h



#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
#define WidthScale    SCREEN_WIDTH / 375.0f
#define HeightScale   SCREEN_HEIGHT / 667.0f
#define SX(v) (WidthScale * v)
#define SY(v) (HeightScale * v)
#define IPHONE_4S_OR_LESS ([UIScreen mainScreen].bounds.size.height <= 480)


//    系统控件的默认高度
#define kStatusBarHeight   (20.f)
#define kTopBarHeight      (44.f)
#define kBottomBarHeight   (49.f)
#define kCellDefaultHeight (44.f)

// **************************************** FRAME ADAPTER ********************************************
#define CGRectMakeFrame(X,Y,W,H) CGRectMake((X) * WidthScale, (Y) * WidthScale, (W) * WidthScale,(H) * WidthScale) //适配
//----------------------系统----------------------------

//获取系统版本
#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
//获取当前语言
#define CurrentLanguage ([[NSLocale preferredLanguages] objectAtIndex:0])
//检查系统版本
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

//----------------------颜色类---------------------------
// rgb颜色转换（16进制->10进制）
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define UIColorFromRGBA(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]


// 获取RGB颜色
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)
#define YGHMainColor UIColorFromRGB(0x7dc058)
//----------------------字体类---------------------------
#define FONT(NAME,FONTSIZE) [UIFont fontWithName:(NAME) size:(FONTSIZE)]
#define SYSTEMFONT(FONTSIZE)    [UIFont systemFontOfSize:FONTSIZE]
#define BOLDSYSTEMFONT(FONTSIZE)   [UIFont boldSystemFontOfSize:FONTSIZE]
//由角度获取弧度 有弧度获取角度
#define degreesToRadian(x) (M_PI * (x) / 180.0)
#define radianToDegrees(radian) (radian*180.0)/(M_PI)

#endif /* RBMacroUtile_h */
