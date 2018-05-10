//
//  MyLock.h
//  DoorLock
//
//  Created by max leung on 9/5/2018.
//  Copyright © 2018 TM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LockData.h"
//#import <Foundation/Foundation.h>
//
//@interface LockData :NSObject
//@property (strong, nonatomic) NSString *LockImg;
//@property (strong, nonatomic) NSString *Status;
//@property (strong, nonatomic) NSString *LockName;
//@property (strong, nonatomic) NSString *BatValue;
//@property (readwrite) BOOL WifiStatus;
//@end
//
//@implementation LockData
//
//@end



@interface MyLock : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *MyLockList;
@property (strong,nonatomic) NSMutableArray *LockData;

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
@end
