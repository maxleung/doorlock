//
//  MyLock.m
//  DoorLock
//
//  Created by max leung on 9/5/2018.
//  Copyright © 2018 TM. All rights reserved.
//

#import "MyLock.h"
#import "MyLockCell.h"
#import "MyLockDetail.h"

@interface MyLock ()

@end

@implementation MyLock

- (void)viewDidLoad {
    [super viewDidLoad];
    [_MyLockList setDelegate:self];
    [_MyLockList setDataSource:self];
    _LockData =[[NSMutableArray alloc]init];
    for(int i =0;i<10;i++){
        LockData *ld = [[LockData alloc]init];
        ld.Status=@"安全关闭";
        ld.LockName = [NSString stringWithFormat:@"门锁%i",i];
        ld.BatValue = @"10";
        ld.WifiStatus = TRUE;
        [_LockData addObject:ld];
    }
    [_MyLockList reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}


 #pragma mark - Navigation
 

 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     
     if([segue.identifier isEqualToString:@"detail"]){
         MyLockDetail *mld= segue.destinationViewController;
         mld.LData =((MyLockCell*)sender).LData;
     }

 }
 
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _LockData.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MyLockCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mylockcell"];
    LockData *obj= [_LockData objectAtIndex:indexPath.row];
    cell.LData =  obj;
    cell.LockName.text = obj.LockName;
    cell.BatValue.text = obj.BatValue;
    cell.OnlineStatus.text = obj.WifiStatus?@"On":@"Off";
    cell.Status.text = obj.Status;
    [cell UpdataStatus];
    return cell;
}





@end
