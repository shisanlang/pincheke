//
//  MineViewController.h
//  pincheke
//
//  Created by duan on 13-7-30.
//  Copyright (c) 2013年 duan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface MineViewController : BaseViewController<UITableViewDelegate,UITableViewDataSource>
{
    UITableView * ListTableView;
}
@end
