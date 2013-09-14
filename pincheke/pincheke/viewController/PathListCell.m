//
//  PathListCell.m
//  pincheke
//
//  Created by duan on 13-9-14.
//  Copyright (c) 2013年 duan. All rights reserved.
//

#import "PathListCell.h"
#import "viewGlobal.h"

@implementation PathListCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        phoneImageView=[[EGOImageView alloc] initWithFrame:CGRectMake(9, 10, 84, 67)];
        //        phoneImageView.image=[UIImage imageNamed:@"morenyulantu.png"];
        [self addSubview:phoneImageView];
        [phoneImageView release];
        
        phoneFrameImageView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 62, 62)];
        phoneFrameImageView.image = [UIImage imageNamed:@"user.png"];
        [self addSubview:phoneFrameImageView];
        [phoneFrameImageView release];
        
        userLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 75, 90, 15)];
        userLabel.text = @"彭丽江冷";
        userLabel.font = XD_FONT_14;
        userLabel.textAlignment = UITextAlignmentCenter;
        userLabel.backgroundColor = XD_COLOR_CLEAR;
        [self addSubview:userLabel];
        [userLabel release];
        
        fromImageView  = [[UIImageView alloc]initWithFrame:CGRectMake(75, 20, 17, 17)];
        fromImageView.image = [UIImage imageNamed:@"icon_start.png"];
        [self addSubview:fromImageView];
        [fromImageView release];
        
        toImageView   = [[UIImageView alloc]initWithFrame:CGRectMake(75, 40, 17, 17)];
        toImageView.image = [UIImage imageNamed:@"icon_end.png"];
        [self addSubview:toImageView];
        [toImageView release];
        
        fromLabel = [[UILabel alloc]initWithFrame:CGRectMake(95, 22, 180, 15)];
        fromLabel.text = @"四惠东辅路西侧";
        fromLabel.font = XD_FONT_14;
        fromLabel.backgroundColor = XD_COLOR_CLEAR;
        [self addSubview:fromLabel];
        [fromLabel release];
        
        toLabel = [[UILabel alloc]initWithFrame:CGRectMake(95, 40, 180, 15)];
        toLabel.text = @"燕郊上上城3期";
        toLabel.font = XD_FONT_14;
        toLabel.backgroundColor = XD_COLOR_CLEAR;
        [self addSubview:toLabel];
        [toLabel release];
        
        distanceLabel = [[UILabel alloc]initWithFrame:CGRectMake(230, 25, 80, 15)];
        distanceLabel.text = @"800米|50分钟前";
        distanceLabel.font = XD_FONT_10;
        distanceLabel.textAlignment = UITextAlignmentRight;
        distanceLabel.textColor = XD_COLOR_GRAY;
        distanceLabel.backgroundColor = XD_COLOR_CLEAR;
        [self addSubview:distanceLabel];
        [distanceLabel release];
        
        carLabel = [[UILabel alloc]initWithFrame:CGRectMake(95, 60, 40, 15)];
        carLabel.text = @"马自达6";
        carLabel.font = XD_FONT_10;
        carLabel.textColor = XD_COLOR_GRAY;
        carLabel.backgroundColor = XD_COLOR_CLEAR;
        [self addSubview:carLabel];
        [carLabel release];
        
        startTimeLabel = [[UILabel alloc]initWithFrame:CGRectMake(140, 60, 180, 15)];
        startTimeLabel.font = XD_FONT_10;
        startTimeLabel.textColor = XD_COLOR_GRAY;
        startTimeLabel.text = @"启程时间:2013-07-18 18:00";
        startTimeLabel.backgroundColor = XD_COLOR_CLEAR;
        [self addSubview:startTimeLabel];
        [startTimeLabel release];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
