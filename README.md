# BlurryBackground
程序进入后台模糊效果

使用说明
=======

###安装
#####手工导入
将项目目录下`BlurryBackground`目录导入项目中
`BlurryView`:实现模糊效果的View

###使用
1. 在`AppDelegate`中导入头文件

		#import "BlurryView.h"

2. 定义`BlurryView`的Tag

		static const NSInteger viewTag = 10001 ;
		
3. 在App的生命周期中控制:

	当程序进入后台添加模糊:
	
	```objective-c
	- (void)applicationDidEnterBackground:(UIApplication *)application{
	    BlurryView *blurView = [[BlurryView alloc]initWithFrame:self.window.frame] ;
	    blurView.tag = viewTag ;
	    for (UIWindow *window in [[UIApplication sharedApplication] windows]) {
	        if (window.windowLevel == UIWindowLevelNormal) {
	            [window addSubview:blurView];
	        }
	    }
	}
	
	```
	
	当程序进入前台删除模糊:
	
	```objective-c
	- (void)applicationWillEnterForeground:(UIApplication *)application{
	    for (UIWindow *window in [[UIApplication sharedApplication] windows]) {
	        if (window.windowLevel == UIWindowLevelNormal) {
	            UIView *view = [window viewWithTag:viewTag];
	            [view removeFromSuperview];
	        }
	    }
	}
		
	```
	
###效果如下
![img](screenshot.gif)

##BlurryBackground
BlurryBackground is available under the MIT license. See the LICENSE file for more info.

