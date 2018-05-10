//
//  LockData.h
//  DoorLock
//
//  Created by max leung on 10/5/2018.
//  Copyright © 2018 TM. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface LockData :NSObject
@property (strong, nonatomic) NSString *LockImg;
@property (strong, nonatomic) NSString *Status;
@property (strong, nonatomic) NSString *LockName;
@property (strong, nonatomic) NSString *BatValue;
@property (readwrite) BOOL WifiStatus;
@end




