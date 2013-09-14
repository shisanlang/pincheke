//
//  HomeViewController.h
//  pincheke
//
//  Created by duan on 13-7-30.
//  Copyright (c) 2013年 duan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface HomeViewController : BaseViewController<UITableViewDelegate, UITableViewDataSource>
//{
//    UITableView *ListTableView;
//    NSMutableArray *SubItemList;
//}

@property (nonatomic, retain) UITableView *ListTableView;
@property (nonatomic, retain) NSMutableArray *SubItemList;

@end
