//
//  AddPassword.m
//  DoorLock
//
//  Created by max leung on 11/5/2018.
//  Copyright © 2018 TM. All rights reserved.
//

#import "AddPassword.h"

@interface AddPassword ()

@end

@implementation AddPassword

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)Pop:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^(){
        
    }];
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

@end
