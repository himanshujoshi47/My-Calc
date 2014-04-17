//
//  EMIViewController.h
//  My Calc
//
//  Created by Himanshu on 4/17/14.
//  Copyright (c) 2014 Himanshu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EMIViewController : UIViewController <UITextFieldDelegate>

//PROPERTIES
@property (weak, nonatomic) IBOutlet UITextField *amountTextField;
@property (weak, nonatomic) IBOutlet UITextField *rOITextField;
@property (weak, nonatomic) IBOutlet UITextField *timeTextField;
@property (weak, nonatomic) IBOutlet UILabel *calculatedEMILabel;


//ACTIONS
- (IBAction)calculateEMI:(id)sender;

@end
