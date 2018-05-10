//
//  MyLockDetail.m
//  DoorLock
//
//  Created by max leung on 9/5/2018.
//  Copyright © 2018 TM. All rights reserved.
//

#import "MyLockDetail.h"


@interface MyLockDetail ()

@end

@implementation MyLockDetail

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    LockData *ld =self.LData;
  
    self.LockImg.image = [UIImage imageNamed:ld.LockImg];
    self.LockName.text = ld.LockName;
    self.BatValue.text = ld.BatValue;
    int i =[self.BatValue.text intValue];
    self.BatImg.image = i>30?[UIImage imageNamed:@"ico_lock_battery_green"]:[UIImage imageNamed:@"ico_lock_battery_red"];
    self.Status.text = ld.Status;
    self.WiftImg.image = ld.WifiStatus?[UIImage imageNamed:@"ico_lock_online"]:[UIImage imageNamed:@"ico_lock_offline"];
    self.WifiStatus.text =ld.WifiStatus?@"On":@"Off";
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
-(void)UpDateContent:(LockData *)ld{
//    self.LData = ld;
//    self.LockImg.image = [UIImage imageNamed:ld.LockImg];
//    self.LockName.text = ld.LockName;
//    self.BatValue.text = ld.BatValue;
//    int i =[self.BatValue.text intValue];
//    self.BatImg.image = i>30?[UIImage imageNamed:@"ico_lock_battery_green"]:[UIImage imageNamed:@"ico_lock_battery_red"];
//    self.Status.text = ld.Status;
//    self.WiftImg.image = ld.WifiStatus?[UIImage imageNamed:@"ico_lock_offline"]:[UIImage imageNamed:@"ico_lock_online"];
//    self.WifiStatus.text =ld.WifiStatus?@"On":@"Off";
}
@end
