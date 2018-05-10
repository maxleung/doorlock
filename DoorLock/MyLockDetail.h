//
//  MyLockDetail.h
//  DoorLock
//
//  Created by max leung on 9/5/2018.
//  Copyright © 2018 TM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LockData.h"

@interface MyLockDetail : UIViewController


- (IBAction)PopToMyLock:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *LockImg;
@property (strong, nonatomic) IBOutlet UILabel *LockName;
@property (strong, nonatomic) IBOutlet UILabel *Remake;
@property (strong, nonatomic) IBOutlet UIImageView *BatImg;
@property (strong, nonatomic) IBOutlet UILabel *BatValue;
@property (strong, nonatomic) IBOutlet UIImageView *WiftImg;
@property (strong, nonatomic) IBOutlet UILabel *WifiStatus;
@property (strong, nonatomic) IBOutlet UILabel *Status;


@property (strong,nonatomic) LockData *LData;


-(void)UpDateContent:(LockData*)ld;


@end
