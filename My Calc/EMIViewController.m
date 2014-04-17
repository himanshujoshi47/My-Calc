 //
//  EMIViewController.m
//  My Calc
//
//  Created by Himanshu on 4/17/14.
//  Copyright (c) 2014 Himanshu. All rights reserved.
//

#import "EMIViewController.h"

@interface EMIViewController ()

@end

@implementation EMIViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)calculateEMI:(id)sender
{
    for (UITextField *textField in self.view.subviews) {
        [textField resignFirstResponder];
    }
    
    double amount = self.amountTextField.text.doubleValue;
    double rateOfInterest = self.rOITextField.text.doubleValue;
    double timePeriod = self.timeTextField.text.doubleValue;
    
    rateOfInterest = rateOfInterest/1200;
    
    double residual = pow((1 + rateOfInterest), timePeriod);
    residual = residual / ( pow((1 + rateOfInterest), timePeriod) - 1);
    
    
    double EMI = amount * rateOfInterest * residual;
    
    [self.calculatedEMILabel setText:[NSString stringWithFormat:@"%0.2f", EMI]];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
