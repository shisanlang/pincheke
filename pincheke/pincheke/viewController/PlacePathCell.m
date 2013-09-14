//
//  PlacePathCell.m
//  pincheke
//
//  Created by duan on 13-9-14.
//  Copyright (c) 2013年 duan. All rights reserved.
//

#import "PlacePathCell.h"
#import "viewGlobal.h"

@implementation PlacePathCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        bgImageView = [[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 310, 83)];
        bgImageView.image = [UIImage imageNamed:@"searchcar.png"];
        [self addSubview:bgImageView];
        [bgImageView release];

        PlaceLabel = [[UILabel alloc]initWithFrame:CGRectMake(60, 30, 240, 15)];
        PlaceLabel.text = @"四惠东地铁--燕郊上上城";
        PlaceLabel.backgroundColor = XD_COLOR_CLEAR;
        [self addSubview:PlaceLabel];
        [PlaceLabel release];
        
        timeImageView = [[UIImageView alloc]initWithFrame:CGRectMake(60, 55, 13, 13)];
        timeImageView.image = [UIImage imageNamed:@"time.png"];
        [self addSubview:timeImageView];
        [timeImageView release];
        
        
        timeLabel = [[UILabel alloc]initWithFrame:CGRectMake(75, 55, 200, 15)];
        timeLabel.font = [UIFont systemFontOfSize:12.0f];
        timeLabel.text = @"23日 下午 6:00出发";
        timeLabel.backgroundColor = XD_COLOR_CLEAR;
        [self addSubview:timeLabel];
        [timeLabel release];
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
