//
//  MyPassword.h
//  DoorLock
//
//  Created by max leung on 11/5/2018.
//  Copyright © 2018 TM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SubViewController.h"

@interface Password : SubViewController
@property (strong, nonatomic) IBOutlet UILabel *LockName;
@property (strong)NSString *NameTxt;
@property (strong, nonatomic) IBOutlet UIView *FirstFace;

@end
