//
//  RegViewController.m
//  DoorLock
//
//  Created by max leung on 3/5/2018.
//  Copyright © 2018 TM. All rights reserved.
//

#import "RegViewController.h"
#import "VerCodeViewController.h"

@interface RegViewController ()

@end

@implementation RegViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_phoneNum becomeFirstResponder];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    VerCodeViewController *vcc = segue.destinationViewController;
    vcc.phoneNum = _phoneNum.text;
}


@end
