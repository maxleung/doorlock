//
//  ViewController.m
//  DoorLock
//
//  Created by max leung on 3/5/2018.
//  Copyright © 2018 TM. All rights reserved.
//

#import "ViewController.h"
#import "RegViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setHidden:YES];
    UIStoryboard *reg = [UIStoryboard storyboardWithName:@"Reg" bundle:nil];
    UIViewController* test2obj = [reg instantiateViewControllerWithIdentifier:@"Reg"];  //test2为viewcontroller的StoryboardId
    [self.navigationController pushViewController:test2obj animated:YES];
    NSLog(@"%@",self.navigationController);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
