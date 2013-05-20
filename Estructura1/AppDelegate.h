//
//  AppDelegate.h
//  Estructura1
//
//  Created by PamLiiz on 06/05/13.
//  Copyright (c) 2013 PamLiiz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XOSplashVideoController.h"
#import "MFSideMenuContainerViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate,XOSplashVideoDelegate>{
    MFSideMenuContainerViewController *container;
}

@property (strong, nonatomic) UIWindow *window;

@end
