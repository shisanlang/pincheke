//
//  WelcomeViewController.m
//  pincheke
//
//  Created by duan on 13-8-6.
//  Copyright (c) 2013年 duan. All rights reserved.
//

#import "WelcomeViewController.h"
#import "LoginViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

+ (WelcomeViewController *)sharedViewController
{
	static WelcomeViewController *sViewController;
	if (sViewController == nil) {
		@synchronized(self) {
			sViewController = [[WelcomeViewController alloc] init];
			assert(sViewController != nil);
		}
	}
	return sViewController;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UILabel * titleLabel = [[UILabel alloc]init];
    titleLabel.frame = CGRectMake(100, 150, 100, 40);
    titleLabel.text = @"拼车客";
    [self.view addSubview:titleLabel];
    [titleLabel release];
    
    UIButton * sinaLoginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    sinaLoginButton.frame = CGRectMake(20, 220, 280, 40);
    [sinaLoginButton setTitle:@"新浪微博帐号登录" forState:UIControlStateNormal];
    [sinaLoginButton addTarget:self action:@selector(sinaLoginTouchUp:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sinaLoginButton];
    
    UIButton * loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    loginButton.frame = CGRectMake(40, 280, 100, 40);
    [loginButton setTitle:@"登录" forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(loginTouchUp:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
    
    UIButton * lookButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    lookButton.frame = CGRectMake(180, 280, 100, 40);
    [lookButton setTitle:@"随便看看" forState:UIControlStateNormal];
    [lookButton addTarget:self action:@selector(lookTouchUp:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:lookButton];
    
}

- (void)sinaLoginTouchUp:(id)sender
{
//    [self dismissModalViewControllerAnimated:YES];
}

- (void)loginTouchUp:(id)sender
{
//    [self dismissModalViewControllerAnimated:YES];
    LoginViewController  * loginVC = [[LoginViewController alloc]init];
    [self presentModalViewController:loginVC animated:YES];
    [loginVC release];
}

- (void)lookTouchUp:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
