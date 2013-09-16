//
//  HomeViewController.m
//  pincheke
//
//  Created by duan on 13-7-30.
//  Copyright (c) 2013年 duan. All rights reserved.
//

#import "HomeViewController.h"
#import "common.h"
#import "PlacePathCell.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"主页";
         self.tabBarItem.image = [UIImage imageNamed:@"first"];
//        self.tabBarItem.badgeValue = @"12313";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.SubItemList=[[NSMutableArray alloc]initWithObjects: @"1",@"2",@"3",nil];
    self.ListTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, XD_SCREENHEIGHT) style:UITableViewStylePlain];
	self.ListTableView.dataSource = self;
	self.ListTableView.delegate = self;
    self.ListTableView.separatorColor=[UIColor clearColor];
    self.ListTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
	[self.view addSubview:self.ListTableView];
    [self.ListTableView release];
    
    
}

- (void)addPathTouchUp
{
    
}

//table
#pragma mark -
#pragma mark UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.SubItemList count]+1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
	// Configure the cell.
    
    if (indexPath.row==[self.SubItemList count]) {
        static NSString *CellIdentifier = @"DataCellLast";
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
            cell.selectionStyle = UITableViewCellSeparatorStyleNone;
        }
        
        UIButton * addMyPathButton = [UIButton buttonWithType:UIButtonTypeCustom];
        addMyPathButton.frame = CGRectMake(10, 20, 301, 45);
        [addMyPathButton setImage:[UIImage imageNamed:@"btn_add.png"] forState:UIControlStateNormal];
        [addMyPathButton setTitle:@"添加我的路线" forState:UIControlStateNormal];
        [addMyPathButton addTarget:self action:@selector(addPathTouchUp) forControlEvents:UIControlEventTouchUpInside];
        [cell addSubview:addMyPathButton];
        
        return cell;
        
    } else {
        
        static NSString *CellIdentifier = @"DataCell";
        
        PlacePathCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[[PlacePathCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
            cell.selectionStyle = UITableViewCellSeparatorStyleNone;
        }
        
        //        cell.textLabel.text = [self.SubItemList objectAtIndex:indexPath.row];
        return cell;
    }
    
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row!=[self.SubItemList count]) {
        ;
    }
}

//
#pragma mark - MemoryWarning

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
