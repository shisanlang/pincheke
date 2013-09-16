//
//  LoginViewController.h
//  pincheke
//
//  Created by duan on 13-9-14.
//  Copyright (c) 2013年 duan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface LoginViewController : BaseViewController<UITableViewDelegate, UITableViewDataSource>
{
    UITableView * ListTableView1;
    UITableView * ListTableView2;
    UITextField * usernameTextField;
    UITextField * userpasswordTextField;
}


@end
