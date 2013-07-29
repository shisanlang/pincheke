//
//  AppDelegate.m
//  pincheke
//
//  Created by duan on 13-7-30.
//  Copyright (c) 2013年 duan. All rights reserved.
//

#import "AppDelegate.h"

#import "HomeViewController.h"
#import "NearbyViewController.h"
#import "MessageViewController.h"
#import "MineViewController.h"

#import "baseUI/BaseNavigationBar.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [_tabBarController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    UIViewController *viewController1 = [[[HomeViewController alloc] init] autorelease];
    UIViewController *viewController2 = [[[NearbyViewController alloc] init] autorelease];
    UIViewController *viewController3 = [[[MessageViewController alloc] init] autorelease];
    UIViewController *viewController4 = [[[MineViewController alloc] init] autorelease];
    
    UINavigationController *navViewController1 = [[[UINavigationController alloc] initWithRootViewController:viewController1] autorelease];
    UINavigationController *navViewController2 = [[[UINavigationController alloc] initWithRootViewController:viewController2] autorelease];
    UINavigationController *navViewController3 = [[[UINavigationController alloc] initWithRootViewController:viewController3] autorelease];
    UINavigationController *navViewController4 = [[[UINavigationController alloc] initWithRootViewController:viewController4] autorelease];
    
    self.tabBarController = [[[UITabBarController alloc] init] autorelease];

    
    self.tabBarController.viewControllers = @[navViewController1, navViewController2, navViewController3, navViewController4];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end
