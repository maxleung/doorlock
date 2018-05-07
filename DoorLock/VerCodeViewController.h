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

 @property (nonatomic,retain) IBOutlet UILabel *tips;

@property (strong, nonatomic) NSString *phoneNum;


-(void)textFieldDidChangeValue:(NSNotification*)textField;
@end
