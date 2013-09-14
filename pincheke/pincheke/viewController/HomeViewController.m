//
//  HomeViewController.m
//  pincheke
//
//  Created by duan on 13-7-30.
//  Copyright (c) 2013年 duan. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"首页";
         self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIButton * sinaLoginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    sinaLoginButton.frame = CGRectMake(20, 220, 280, 40);
    [sinaLoginButton setTitle:@"添加我的路线" forState:UIControlStateNormal];
    [sinaLoginButton addTarget:self action:@selector(addPathTouchUp:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sinaLoginButton];
    
}

- (void)addPathTouchUp
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
