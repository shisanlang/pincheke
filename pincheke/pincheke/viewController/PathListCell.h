//
//  PathListCell.h
//  pincheke
//
//  Created by duan on 13-9-14.
//  Copyright (c) 2013年 duan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EGOImageView.h"

@interface PathListCell : UITableViewCell
{
    UIImageView * phoneFrameImageView;
    EGOImageView *phoneImageView;
    UILabel * userLabel;
    UIImageView * fromImageView;
    UIImageView * toImageView;
    UILabel * fromLabel;
    UILabel * toLabel;
    UILabel * distanceLabel;
    UILabel * carLabel;
    UILabel * startTimeLabel;
}
@end
