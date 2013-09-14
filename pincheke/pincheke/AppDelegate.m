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
#import "WelcomeViewController.h"

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
    
    //tabbar
    UIView *BottomButtonView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    //    UIImageView *BottomImageView=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 49)];
    //    BottomImageView.image=[UIImage imageNamed:@"TabBarBackground_all.png"];
    //    [BottomButtonView addSubview:BottomImageView];
    //    [BottomImageView release];
    
    
    CGRect frame = CGRectMake(0, 0, 64 ,50);
	UIImage *BottomButtonBackground  = [UIImage imageNamed:@"shouye.png" ];
	UIImage *BottomButtonSelected = [UIImage imageNamed:@"shouye_on.png"];
	TabButton1 = [[UIButton alloc] initWithFrame:frame];
	[TabButton1 setImage:BottomButtonBackground forState:UIControlStateNormal];
	[TabButton1 setImage:BottomButtonSelected forState:UIControlStateSelected];
	[TabButton1 setImage:BottomButtonSelected forState:UIControlStateHighlighted];
	[TabButton1 addTarget:self action:@selector(TabButton1Select) forControlEvents:UIControlEventTouchDown];
	[BottomButtonView addSubview:TabButton1];
    TabButton1.selected=YES;
    
    frame = CGRectMake(64, 0, 64 ,50);
	BottomButtonBackground  = [UIImage imageNamed:@"jingpin.png" ];
	BottomButtonSelected = [UIImage imageNamed:@"jingpin_on.png"];
	TabButton2 = [[UIButton alloc] initWithFrame:frame];
	[TabButton2 setImage:BottomButtonBackground forState:UIControlStateNormal];
	[TabButton2 setImage:BottomButtonSelected forState:UIControlStateSelected];
	[TabButton2 setImage:BottomButtonSelected forState:UIControlStateHighlighted];
	[TabButton2 addTarget:self action:@selector(TabButton2Select) forControlEvents:UIControlEventTouchDown];
	[BottomButtonView addSubview:TabButton2];
    
    frame = CGRectMake(128, 0, 64 ,50);
	BottomButtonBackground  = [UIImage imageNamed:@"shanghu.png" ];
	BottomButtonSelected = [UIImage imageNamed:@"shanghu_on.png"];
	TabButton3 = [[UIButton alloc] initWithFrame:frame];
	[TabButton3 setImage:BottomButtonBackground forState:UIControlStateNormal];
	[TabButton3 setImage:BottomButtonSelected forState:UIControlStateSelected];
	[TabButton3 setImage:BottomButtonSelected forState:UIControlStateHighlighted];
	[TabButton3 addTarget:self action:@selector(TabButton3Select) forControlEvents:UIControlEventTouchDown];
	[BottomButtonView addSubview:TabButton3];
    
    frame = CGRectMake(192, 0, 64 ,50);
	BottomButtonBackground  = [UIImage imageNamed:@"wode.png" ];
	BottomButtonSelected = [UIImage imageNamed:@"wode_on.png"];
	TabButton4 = [[UIButton alloc] initWithFrame:frame];
	[TabButton4 setImage:BottomButtonBackground forState:UIControlStateNormal];
	[TabButton4 setImage:BottomButtonSelected forState:UIControlStateSelected];
	[TabButton4 setImage:BottomButtonSelected forState:UIControlStateHighlighted];
	[TabButton4 addTarget:self action:@selector(TabButton4Select) forControlEvents:UIControlEventTouchDown];
	[BottomButtonView addSubview:TabButton4];
    
    
	[BottomButtonView release];
    
    // show welcome
	WelcomeViewController *welcomeVC = [WelcomeViewController sharedViewController];
	[self.tabBarController  presentModalViewController:welcomeVC animated:NO];
    
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
