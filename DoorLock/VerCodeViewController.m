//
//  VerCodeViewController.m
//  DoorLock
//
//  Created by max leung on 7/5/2018.
//  Copyright © 2018 TM. All rights reserved.
//

#import "VerCodeViewController.h"

@interface VerCodeViewController ()

@end

@implementation VerCodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(textFieldDidChangeValue:)
                                                 name:UITextFieldTextDidChangeNotification
                                               object:_verCodeFidld];
    _verCodeFidld.leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 0)];
    _verCodeFidld.leftViewMode = UITextFieldViewModeAlways;
    
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


-(void)textFieldDidChangeValue:(NSNotification*)textField{
    UITextField *sender = (UITextField *)[textField object];
    
    NSDictionary *attributes = @{
                                 
                                 NSFontAttributeName:[UIFont systemFontOfSize:17],
                                 
                                 NSKernAttributeName:[NSNumber numberWithInt:42],
                                 
                                 };
    _verCodeFidld.attributedText = [[NSAttributedString alloc]initWithString:sender.text attributes:attributes];

    NSLog(@"%@",sender.text);
    
   
}
@end
