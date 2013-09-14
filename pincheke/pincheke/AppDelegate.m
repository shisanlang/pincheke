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
    
    
    CGRect frame = CGRectMake(0, 0, 80 ,50);
	UIImage *BottomButtonBackground  = [UIImage imageNamed:@"tab_home.png" ];
	UIImage *BottomButtonSelected = [UIImage imageNamed:@"tab_home_select.png"];
	TabButton1 = [[UIButton alloc] initWithFrame:frame];
    TabButton1.tag=0;
	[TabButton1 setImage:BottomButtonBackground forState:UIControlStateNormal];
	[TabButton1 setImage:BottomButtonSelected forState:UIControlStateSelected];
	[TabButton1 setImage:BottomButtonSelected forState:UIControlStateHighlighted];
	[TabButton1 addTarget:self action:@selector(TabButtonSelect:) forControlEvents:UIControlEventTouchDown];
	[BottomButtonView addSubview:TabButton1];
    TabButton1.selected=YES;
    
    frame = CGRectMake(80, 0, 80 ,50);
	BottomButtonBackground  = [UIImage imageNamed:@"tab_square.png" ];
	BottomButtonSelected = [UIImage imageNamed:@"tab_square_select.png"];
	TabButton2 = [[UIButton alloc] initWithFrame:frame];
    TabButton2.tag=1;
	[TabButton2 setImage:BottomButtonBackground forState:UIControlStateNormal];
	[TabButton2 setImage:BottomButtonSelected forState:UIControlStateSelected];
	[TabButton2 setImage:BottomButtonSelected forState:UIControlStateHighlighted];
	[TabButton2 addTarget:self action:@selector(TabButtonSelect:) forControlEvents:UIControlEventTouchDown];
	[BottomButtonView addSubview:TabButton2];
    
    frame = CGRectMake(80*2, 0, 80 ,50);
	BottomButtonBackground  = [UIImage imageNamed:@"tab_message.png" ];
	BottomButtonSelected = [UIImage imageNamed:@"tab_message_select.png"];
	TabButton3 = [[UIButton alloc] initWithFrame:frame];
    TabButton3.tag=2;
	[TabButton3 setImage:BottomButtonBackground forState:UIControlStateNormal];
	[TabButton3 setImage:BottomButtonSelected forState:UIControlStateSelected];
	[TabButton3 setImage:BottomButtonSelected forState:UIControlStateHighlighted];
	[TabButton3 addTarget:self action:@selector(TabButtonSelect:) forControlEvents:UIControlEventTouchDown];
	[BottomButtonView addSubview:TabButton3];
    
    frame = CGRectMake(80*3, 0, 80 ,50);
	BottomButtonBackground  = [UIImage imageNamed:@"tab_me.png" ];
	BottomButtonSelected = [UIImage imageNamed:@"tab_me_select.png"];
	TabButton4 = [[UIButton alloc] initWithFrame:frame];
    TabButton4.tag=3;
	[TabButton4 setImage:BottomButtonBackground forState:UIControlStateNormal];
	[TabButton4 setImage:BottomButtonSelected forState:UIControlStateSelected];
	[TabButton4 setImage:BottomButtonSelected forState:UIControlStateHighlighted];
	[TabButton4 addTarget:self action:@selector(TabButtonSelect:) forControlEvents:UIControlEventTouchDown];
	[BottomButtonView addSubview:TabButton4];
    
    [self.tabBarController.tabBar addSubview:BottomButtonView];
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

//tabbar click
-(void)TabButtonSelect:(UIButton *)but
{

    self.tabBarController.selectedIndex = but.tag;
    
    switch (but.tag) {
        case 0:
            
            TabButton1.selected = YES;
            TabButton2.selected = NO;
            TabButton3.selected = NO;
            TabButton4.selected = NO;
            break;
            
        case 1:
            TabButton1.selected = NO;
            TabButton2.selected = YES;
            TabButton3.selected = NO;
            TabButton4.selected = NO;
            break;
            
        case 2:
            TabButton1.selected = NO;
            TabButton2.selected = NO;
            TabButton3.selected = YES;
            TabButton4.selected = NO;
            break;
            
        case 3:
            TabButton1.selected = NO;
            TabButton2.selected = NO;
            TabButton3.selected = NO;
            TabButton4.selected = YES;
            break;
            
        default:
            break;
    }
	
}

@end
