//
//  LockLog.m
//  DoorLock
//
//  Created by max leung on 10/5/2018.
//  Copyright © 2018 TM. All rights reserved.
//

#import "LockLog.h"

@implementation LogData

@end


@interface LockLog ()

@end

@implementation LockLog

- (void)viewDidLoad {
    [super viewDidLoad];
    self.LockName.text = self.NameTxt;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)PopToMyLock:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"logcell"];
    UILabel *time= [cell viewWithTag:100];
    UIImageView *sticon =[cell viewWithTag:101];
    UILabel *name = [cell viewWithTag:102];
    UIImageView *logicon = [cell viewWithTag:103];
    UILabel *logstatus = [cell viewWithTag:104];
    return cell;
};




@end
