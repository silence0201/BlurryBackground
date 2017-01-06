//
//  AppDelegate.m
//  BlurryBackgroundDEmo
//
//  Created by 杨晴贺 on 06/01/2017.
//  Copyright © 2017 silence. All rights reserved.
//

#import "AppDelegate.h"
#import "BlurryView.h"

static const NSInteger viewTag = 10001 ;
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application{
    BlurryView *blurView = [[BlurryView alloc]initWithFrame:self.window.frame] ;
    blurView.tag = viewTag ;
    for (UIWindow *window in [[UIApplication sharedApplication] windows]) {
        if (window.windowLevel == UIWindowLevelNormal) {
            [window addSubview:blurView];
        }
    }
}

- (void)applicationWillEnterForeground:(UIApplication *)application{
    for (UIWindow *window in [[UIApplication sharedApplication] windows]) {
        if (window.windowLevel == UIWindowLevelNormal) {
            UIView *view = [window viewWithTag:viewTag];
            [view removeFromSuperview];
        }
    }

}


@end
