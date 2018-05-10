//
//  LockLog.h
//  DoorLock
//
//  Created by max leung on 10/5/2018.
//  Copyright © 2018 TM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LogData:NSObject{

}
@property (strong) NSString *Time;
@property (strong) NSString *Status;
@property (strong) NSString *Name;
@end


@interface LockLog : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UILabel *LockName;
@property (strong) NSString *NameTxt;

@end
