//
//  MyLockCell.m
//  DoorLock
//
//  Created by max leung on 9/5/2018.
//  Copyright © 2018 TM. All rights reserved.
//

#import "MyLockCell.h"

@implementation MyLockCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

-(void)UpdataStatus{
    if([_OnlineStatus.text isEqualToString: @"Off"]){
        _OnLineIcon.image = [UIImage imageNamed:@"ico_lock_offline"];
    }else{
       _OnLineIcon.image = [UIImage imageNamed:@"ico_lock_online"];
    }
    int i =[_BatValue.text intValue];
    if(i>30){
        _BatIcon.image = [UIImage imageNamed:@"ico_lock_battery_green"];
    }else{
        _BatIcon.image = [UIImage imageNamed:@"ico_lock_battery_red"];
    }
    
    if([_Status.text isEqualToString: @"异常报警"]){
        _Status.backgroundColor = [UIColor redColor];
        _Status.textColor = [UIColor whiteColor];
    }else{
        _Status.backgroundColor = [UIColor whiteColor];
        _Status.textColor = [UIColor redColor];
    }
    
}

@end
