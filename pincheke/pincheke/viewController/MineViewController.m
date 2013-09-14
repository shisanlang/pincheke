//
//  MineViewController.m
//  pincheke
//
//  Created by duan on 13-7-30.
//  Copyright (c) 2013年 duan. All rights reserved.
//

#import "MineViewController.h"
#import "common.h"

@interface MineViewController ()

@end

@implementation MineViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"我的";
         self.tabBarItem.image = [UIImage imageNamed:@"second"];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    ListTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, XD_SCREENWIDTH, XD_SCREENHEIGHT) style:UITableViewStyleGrouped];
    ListTableView.delegate = self;
    ListTableView.dataSource = self;
    [self.view addSubview:ListTableView];
    [ListTableView release];
}

#pragma mark table
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 3) {
        return 3;
    } else {
        return 1;
    }
}

//- (float)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return 30;
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"dataCellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
    }
    
    if (indexPath.section == 0) {
        
        cell.accessoryType = UITableViewCellAccessoryNone;
        cell.textLabel.text = @"推送";
        
    } else if (indexPath.section == 1) {
        
        cell.textLabel.text = @"离线地图";
        
    } else if (indexPath.section == 2) {
        
        cell.textLabel.text = @"切换城市";
        
    } else {
        if (indexPath.row == 0) {
            
            cell.textLabel.text = @"意见反馈";
            
        } else if (indexPath.row == 1) {
            
            cell.textLabel.text = @"给我们打分";
            
        } else {
            
            cell.textLabel.text = @"检查更新";
            
        }
    }
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

#pragma mark mem
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
