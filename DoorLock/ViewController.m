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
static ViewController* RootView;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setHidden:YES];
    UIStoryboard *reg = [UIStoryboard storyboardWithName:@"MyLock" bundle:nil];
    UIViewController* test2obj = [reg instantiateViewControllerWithIdentifier:@"MyLock"];
    [self.navigationController pushViewController:test2obj animated:YES];
    RootView = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+(void)PushStoryUIStoryboard:(NSString *)UIStoryboardName{
     UIStoryboard *sb = [UIStoryboard storyboardWithName:UIStoryboardName bundle:nil];
     UIViewController* uiv = [sb instantiateViewControllerWithIdentifier:UIStoryboardName];
     [RootView.navigationController pushViewController:uiv animated:YES];
}


@end
