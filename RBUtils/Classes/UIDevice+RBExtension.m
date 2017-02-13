//
//  UIDevice+RBExtension.m
//  Pods
//
//  Created by baxiang on 2017/2/13.
//
//

#import "UIDevice+RBExtension.h"
#import <sys/sysctl.h>
#import <sys/utsname.h>
#import <SystemConfiguration/CaptiveNetwork.h>
@implementation UIDevice (RBExtension)
// Device Name
+ (NSString *)deviceName {
    // Get the current device name
    if ([[UIDevice currentDevice] respondsToSelector:@selector(name)]) {
        // Make a string for the device name
        NSString *deviceName = [[UIDevice currentDevice] name];
        // Set the output to the device name
        return deviceName;
    } else {
        // Device name not found
        return nil;
    }
}

// System Name
+ (NSString *)systemName {
    // Get the current system name
    if ([[UIDevice currentDevice] respondsToSelector:@selector(systemName)]) {
        // Make a string for the system name
        NSString *systemName = [[UIDevice currentDevice] systemName];
        // Set the output to the system name
        return systemName;
    } else {
        // System name not found
        return nil;
    }
}

// System Version
+ (NSString *)systemVersion {
    // Get the current system version
    if ([[UIDevice currentDevice] respondsToSelector:@selector(systemVersion)]) {
        // Make a string for the system version
        NSString *systemVersion = [[UIDevice currentDevice] systemVersion];
        // Set the output to the system version
        return systemVersion;
    } else {
        // System version not found
        return nil;
    }
}

// System Device Type (iPhone1,0) (Formatted = iPhone 1)
+ (NSString *)systemDeviceTypeFormatted:(BOOL)formatted {
    // Set up a Device Type String
    NSString *DeviceType;
    
    // Check if it should be formatted
    if (formatted) {
        // Formatted
        @try {
            // Set up a new Device Type String
            NSString *NewDeviceType;
            // Set up a struct
            struct utsname DT;
            // Get the system information
            uname(&DT);
            // Set the device type to the machine type
            DeviceType = [NSString stringWithFormat:@"%s", DT.machine];
            
            if ([DeviceType isEqualToString:@"i386"])
                NewDeviceType = @"iPhone Simulator";
            else if ([DeviceType isEqualToString:@"x86_64"])
                NewDeviceType = @"iPhone Simulator";
            else if ([DeviceType isEqualToString:@"iPhone1,1"])
                NewDeviceType = @"iPhone";
            else if ([DeviceType isEqualToString:@"iPhone1,2"])
                NewDeviceType = @"iPhone 3G";
            else if ([DeviceType isEqualToString:@"iPhone2,1"])
                NewDeviceType = @"iPhone 3GS";
            else if ([DeviceType isEqualToString:@"iPhone3,1"])
                NewDeviceType = @"iPhone 4";
            else if ([DeviceType isEqualToString:@"iPhone4,1"])
                NewDeviceType = @"iPhone 4S";
            else if ([DeviceType isEqualToString:@"iPhone5,1"])
                NewDeviceType = @"iPhone 5(GSM)";
            else if ([DeviceType isEqualToString:@"iPhone5,2"])
                NewDeviceType = @"iPhone 5(GSM+CDMA)";
            else if ([DeviceType isEqualToString:@"iPhone5,3"])
                NewDeviceType = @"iPhone 5c(GSM)";
            else if ([DeviceType isEqualToString:@"iPhone5,4"])
                NewDeviceType = @"iPhone 5c(GSM+CDMA)";
            else if ([DeviceType isEqualToString:@"iPhone6,1"])
                NewDeviceType = @"iPhone 5s(GSM)";
            else if ([DeviceType isEqualToString:@"iPhone6,2"])
                NewDeviceType = @"iPhone 5s(GSM+CDMA)";
            else if ([DeviceType isEqualToString:@"iPhone7,1"])
                NewDeviceType = @"iPhone 6 Plus";
            else if ([DeviceType isEqualToString:@"iPhone7,2"])
                NewDeviceType = @"iPhone 6";
            else if ([DeviceType isEqualToString:@"iPhone8,1"])
                NewDeviceType = @"iPhone 6s";
            else if ([DeviceType isEqualToString:@"iPhone8,2"])
                NewDeviceType = @"iPhone 6s Plus";
            else if ([DeviceType isEqualToString:@"iPhone8,4"])
                NewDeviceType = @"iPhone SE";
            else if ([DeviceType isEqualToString:@"iPod1,1"])
                NewDeviceType = @"iPod Touch 1G";
            else if ([DeviceType isEqualToString:@"iPod2,1"])
                NewDeviceType = @"iPod Touch 2G";
            else if ([DeviceType isEqualToString:@"iPod3,1"])
                NewDeviceType = @"iPod Touch 3G";
            else if ([DeviceType isEqualToString:@"iPod4,1"])
                NewDeviceType = @"iPod Touch 4G";
            else if ([DeviceType isEqualToString:@"iPod5,1"])
                NewDeviceType = @"iPod Touch 5G";
            else if ([DeviceType isEqualToString:@"iPod7,1"])
                NewDeviceType = @"iPod Touch 6G";
            else if ([DeviceType isEqualToString:@"iPad1,1"])
                NewDeviceType = @"iPad";
            else if ([DeviceType isEqualToString:@"iPad2,1"])
                NewDeviceType = @"iPad 2(WiFi)";
            else if ([DeviceType isEqualToString:@"iPad2,2"])
                NewDeviceType = @"iPad 2(GSM)";
            else if ([DeviceType isEqualToString:@"iPad2,3"])
                NewDeviceType = @"iPad 2(CDMA)";
            else if ([DeviceType isEqualToString:@"iPad2,4"])
                NewDeviceType = @"iPad 2(WiFi + New Chip)";
            else if ([DeviceType isEqualToString:@"iPad2,5"])
                NewDeviceType = @"iPad mini(WiFi)";
            else if ([DeviceType isEqualToString:@"iPad2,6"])
                NewDeviceType = @"iPad mini(GSM)";
            else if ([DeviceType isEqualToString:@"iPad2,7"])
                NewDeviceType = @"iPad mini(GSM+CDMA)";
            else if ([DeviceType isEqualToString:@"iPad3,1"])
                NewDeviceType = @"iPad 3(WiFi)";
            else if ([DeviceType isEqualToString:@"iPad3,2"])
                NewDeviceType = @"iPad 3(GSM+CDMA)";
            else if ([DeviceType isEqualToString:@"iPad3,3"])
                NewDeviceType = @"iPad 3(GSM)";
            else if ([DeviceType isEqualToString:@"iPad3,4"])
                NewDeviceType = @"iPad 4(WiFi)";
            else if ([DeviceType isEqualToString:@"iPad3,5"])
                NewDeviceType = @"iPad 4(GSM)";
            else if ([DeviceType isEqualToString:@"iPad3,6"])
                NewDeviceType = @"iPad 4(GSM+CDMA)";
            else if ([DeviceType isEqualToString:@"iPad3,3"])
                NewDeviceType = @"New iPad";
            else if ([DeviceType isEqualToString:@"iPad4,1"])
                NewDeviceType = @"iPad Air(WiFi)";
            else if ([DeviceType isEqualToString:@"iPad4,2"])
                NewDeviceType = @"iPad Air(Cellular)";
            else if ([DeviceType isEqualToString:@"iPad4,4"])
                NewDeviceType = @"iPad mini 2(WiFi)";
            else if ([DeviceType isEqualToString:@"iPad4,5"])
                NewDeviceType = @"iPad mini 2(Cellular)";
            else if ([DeviceType isEqualToString:@"iPad5,1"])
                NewDeviceType = @"iPad mini 4(WiFi)";
            else if ([DeviceType isEqualToString:@"iPad5,2"])
                NewDeviceType = @"iPad mini 4(Cellular)";
            else if ([DeviceType isEqualToString:@"iPad5,4"])
                NewDeviceType = @"iPad Air 2(WiFi)";
            else if ([DeviceType isEqualToString:@"iPad5,5"])
                NewDeviceType = @"iPad Air 2(Cellular)";
            else if ([DeviceType isEqualToString:@"iPad6,3"])
                NewDeviceType = @"9.7-inch iPad Pro(WiFi)";
            else if ([DeviceType isEqualToString:@"iPad6,4"])
                NewDeviceType = @"9.7-inch iPad Pro(Cellular)";
            else if ([DeviceType isEqualToString:@"iPad6,7"])
                NewDeviceType = @"12.9-inch iPad Pro(WiFi)";
            else if ([DeviceType isEqualToString:@"iPad6,8"])
                NewDeviceType = @"12.9-inch iPad Pro(Cellular)";
            else if ([DeviceType hasPrefix:@"iPad"])
                NewDeviceType = @"iPad";
            
            // Return the new device type
            return NewDeviceType;
        }
        @catch (NSException *exception) {
            // Error
            return nil;
        }
    } else {
        // Unformatted
        @try {
            // Set up a struct
            struct utsname DT;
            // Get the system information
            uname(&DT);
            // Set the device type to the machine type
            DeviceType = [NSString stringWithFormat:@"%s", DT.machine];
            
            // Return the device type
            return DeviceType;
        }
        @catch (NSException *exception) {
            // Error
            return nil;
        }
    }
}

// Get the Screen Width (X)
+ (NSInteger)screenWidth {
    // Get the screen width
    @try {
        // Screen bounds
        CGRect Rect = [[UIScreen mainScreen] bounds];
        // Find the width (X)
        NSInteger Width = Rect.size.width;
        // Verify validity
        if (Width <= 0) {
            // Invalid Width
            return -1;
        }
        
        // Successful
        return Width;
    }
    @catch (NSException *exception) {
        // Error
        return -1;
    }
}

// Get the Screen Height (Y)
+ (NSInteger)screenHeight {
    // Get the screen height
    @try {
        // Screen bounds
        CGRect Rect = [[UIScreen mainScreen] bounds];
        // Find the Height (Y)
        NSInteger Height = Rect.size.height;
        // Verify validity
        if (Height <= 0) {
            // Invalid Height
            return -1;
        }
        
        // Successful
        return Height;
    }
    @catch (NSException *exception) {
        // Error
        return -1;
    }
}
+(NSString *) currentWifiSSID
{
#if TARGET_OS_SIMULATOR
    return @"(simulator)";
#else
    NSArray *ifs = (__bridge id)CNCopySupportedInterfaces();
    
    id info = nil;
    for (NSString *ifnam in ifs) {
        info = (__bridge id)CNCopyCurrentNetworkInfo((__bridge CFStringRef)ifnam);
        if (info && [info count]) {
            break;
        }
    }
    NSDictionary *dctySSID = (NSDictionary *)info;
    NSString *ssid = [dctySSID objectForKey:@"SSID"] ;
    
    return ssid;
#endif
}



@end
