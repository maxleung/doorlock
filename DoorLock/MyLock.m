//
//  MyLock.m
//  DoorLock
//
//  Created by max leung on 9/5/2018.
//  Copyright © 2018 TM. All rights reserved.
//

#import "MyLock.h"
#import "MyLockCell.h"

@interface MyLock ()

@end

@implementation MyLock

- (void)viewDidLoad {
    [super viewDidLoad];
    [_MyLockList setDelegate:self];
    [_MyLockList setDataSource:self];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  MyLockCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mylockcell"];
    cell.LockName.text =@"门锁";
    cell.BatValue.text =@"10";
    cell.OnlineStatus.text = @"Off";
    [cell UpdataStatus];
    return cell;
}



@end
