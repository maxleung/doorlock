//
//  VerCodeViewController.h
//  DoorLock
//
//  Created by max leung on 7/5/2018.
//  Copyright © 2018 TM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VerCodeViewController : UIViewController<UITextFieldDelegate>


 @property (nonatomic,retain) IBOutlet UITextField *verCodeFidld;


- (void)textFieldDidEndEditing:(UITextField *)textField;

- (void)textFieldDidBeginEditing:(UITextField *)textField;

-(void)textFieldDidChangeValue:(NSNotification*)textField;
@end
