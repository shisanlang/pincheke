//
//  NearbyViewController.m
//  pincheke
//
//  Created by duan on 13-7-30.
//  Copyright (c) 2013年 duan. All rights reserved.
//

#import "NearbyViewController.h"
#import "common.h"
#import "viewGlobal.h"
#import "PathListCell.h"

@interface NearbyViewController ()

@end

@implementation NearbyViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
//        self.title = @"附近";
//         self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.SubItemList=[[NSMutableArray alloc]initWithObjects: @"1",@"2",@"3",@"4",nil];
    self.ListTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, XD_SCREENHEIGHT) style:UITableViewStylePlain];
	self.ListTableView.dataSource = self;
	self.ListTableView.delegate = self;
    self.ListTableView.separatorColor=[UIColor clearColor];
    self.ListTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
	[self.view addSubview:self.ListTableView];
    [self.ListTableView release];
    
    newButton = [UIButton buttonWithType:UIButtonTypeCustom];
    newButton.frame = CGRectMake(80, 5, 40, 45);
    newButton.tag = 0;
//    [newButton setImage:[UIImage imageNamed:@"btn_add.png"] forState:UIControlStateNormal];
    [newButton setTitle:@"最新" forState:UIControlStateNormal];
    [newButton.titleLabel setFont:XD_FONT_14];
    [newButton addTarget:self action:@selector(Refresh:) forControlEvents:UIControlEventTouchUpInside];
    [self.navigationController.navigationBar addSubview:newButton];
    
    nearbyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    nearbyButton.frame = CGRectMake(200, 5, 40, 45);
    nearbyButton.tag = 1;
//    [nearbyButton setImage:[UIImage imageNamed:@"btn_add.png"] forState:UIControlStateNormal];
    [nearbyButton setTitle:@"附近" forState:UIControlStateNormal];
    [nearbyButton.titleLabel setFont:XD_FONT_14];
    [nearbyButton addTarget:self action:@selector(Refresh:) forControlEvents:UIControlEventTouchUpInside];
    [self.navigationController.navigationBar addSubview:nearbyButton];
}

//table
#pragma mark -
#pragma mark UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.SubItemList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
	// Configure the cell.
    

        
    static NSString *CellIdentifier = @"DataCell";
    
    PathListCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[PathListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    }
    
    //        cell.textLabel.text = [self.SubItemList objectAtIndex:indexPath.row];
    return cell;
    
    
    
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

#pragma mark - Button
- (void)Refresh:(UIButton *)button
{
}


#pragma mark - MemoryWarning
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
