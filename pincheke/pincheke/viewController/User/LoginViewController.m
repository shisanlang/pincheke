//
//  LoginViewController.m
//  pincheke
//
//  Created by duan on 13-9-14.
//  Copyright (c) 2013年 duan. All rights reserved.
//

#import "LoginViewController.h"
#import "viewGlobal.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"登 录";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    ListTableView1 = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 100) style:UITableViewStyleGrouped];
	ListTableView1.dataSource = self;
	ListTableView1.delegate = self;
    ListTableView1.scrollEnabled = NO;
    ListTableView1.separatorStyle = UITableViewCellSeparatorStyleNone;
    ListTableView1.backgroundColor = XD_COLOR_CLEAR;
    ListTableView1.backgroundView = nil;
	[self.view addSubview:ListTableView1];
    [ListTableView1 release];
    
    //用户名
    UILabel * userLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 20, 60, 20)];
    userLabel.text = @"用户名:";
    userLabel.font = XD_FONT_B18;
    userLabel.backgroundColor = XD_COLOR_CLEAR;
    [self.view addSubview:userLabel];
    [userLabel release];
    
    usernameTextField = [[UITextField alloc]initWithFrame:CGRectMake(80, 20, 200, 20)];
    usernameTextField.placeholder = @"手机号/昵称";
    [self.view addSubview:usernameTextField];
    [usernameTextField release];
    
    //密码
    UILabel * passwordLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 60, 60, 20)];
    passwordLabel.text = @"密  码:";
    passwordLabel.font = XD_FONT_B18;
    passwordLabel.backgroundColor = XD_COLOR_CLEAR;
    [self.view addSubview:passwordLabel];
    [passwordLabel release];
    
    userpasswordTextField = [[UITextField alloc]initWithFrame:CGRectMake(80, 60, 200, 20)];
    userpasswordTextField.placeholder = @"至少6位";
    [self.view addSubview:userpasswordTextField];
    [userpasswordTextField release];
    
    //登录
    UIButton * loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    loginButton.frame = CGRectMake(10, 120, 301, 45);
    [loginButton setBackgroundImage:[UIImage imageNamed:@"btn_red.png"] forState:UIControlStateNormal];
    [loginButton setTitle:@"登录" forState:UIControlStateNormal];
    loginButton.titleLabel.textColor = XD_COLOR_WHITE;
    [loginButton addTarget:self action:@selector(doLogin) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
    
    //其他帐户
    ListTableView2 = [[UITableView alloc]initWithFrame:CGRectMake(0, 200, 320, 100) style:UITableViewStyleGrouped];
	ListTableView2.dataSource = self;
	ListTableView2.delegate = self;
    ListTableView2.scrollEnabled = NO;
    ListTableView2.separatorStyle = UITableViewCellSeparatorStyleNone;
    ListTableView2.backgroundColor = XD_COLOR_CLEAR;
    ListTableView2.backgroundView = nil;
	[self.view addSubview:ListTableView2];
    [ListTableView2 release];
    
    //新浪
    UIImageView * sinaImageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 213, 35, 35)];
    sinaImageView.image = [UIImage imageNamed:@"sina.png"];
    [self.view addSubview:sinaImageView];
    [sinaImageView release];
    
    //
    UIButton * sinaLoginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    sinaLoginButton.frame = CGRectMake(60, 220, 200, 20);
    [sinaLoginButton setTitle:@"新浪微博账号登录(推荐)" forState:UIControlStateNormal];
    [sinaLoginButton setTitle:@"新浪微博账号登录(推荐)" forState:UIControlStateSelected];
    [sinaLoginButton.titleLabel setFont:XD_FONT_B18];
    sinaLoginButton.titleLabel.textColor = XD_COLOR_BLACK;
    [sinaLoginButton addTarget:self action:@selector(doSinaLogin) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sinaLoginButton];
}

//table
#pragma mark -
#pragma mark UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (tableView == ListTableView1) {
        return 2;
    } else {
        return 1;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
	// Configure the cell.
    
    static NSString *CellIdentifier = @"DataCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    }
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}

#pragma mark - Button
- (void)doLogin
{
}

- (void)doSinaLogin
{
}


#pragma mark - MemoryWarning
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
