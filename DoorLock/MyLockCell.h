//
//  MyLockCell.h
//  DoorLock
//
//  Created by max leung on 9/5/2018.
//  Copyright © 2018 TM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyLockCell : UITableViewCell

@property (retain, nonatomic) IBOutlet UIImageView *LockImg;
@property (strong, nonatomic) IBOutlet UILabel *LockName;

@property (strong, nonatomic) IBOutlet UILabel *Status;
@property (strong, nonatomic) IBOutlet UILabel *OnlineStatus;
@property (strong, nonatomic) IBOutlet UIImageView *OnLineIcon;
@property (strong, nonatomic) IBOutlet UILabel *BatValue;
@property (strong, nonatomic) IBOutlet UIImageView *BatIcon;



-(void)UpdataStatus;


@end
