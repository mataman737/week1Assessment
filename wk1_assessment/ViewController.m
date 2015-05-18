//
//  ViewController.m
//  wk1_assessment
//
//  Created by Stephen T. Mata on 5/17/15.
//  Copyright (c) 2015 Stephen T. Mata. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *valueOne;
@property (weak, nonatomic) IBOutlet UITextField *valueTwo;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *webButton;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Answer";
}


#pragma - Calculate Button


- (IBAction)onCalculateButtonPressed:(UIButton *)sender {



    //Convert ValueOne Into An Int
    NSString *valueOneInput = self.valueOne.text;
    int valueOneInt = [valueOneInput intValue];

    //Convert ValueTwo Into An Int
    NSString *valueTwoInput = self.valueTwo.text;
    int valueTwoInt = [valueTwoInput intValue];

    //Multiply the Two Int Value One Into An Int
    int result = valueOneInt * valueTwoInt;

    //Convert int back into a string
    NSString *resultToInt = [NSString stringWithFormat:@"%d",result];

    //Apply the result to the navigation title
    self.navigation.title = resultToInt;

    //NSLog(@"%d", result); - Created a log to see if "result" was working

    //Disabling the "web" button unless
    if (!(result%5 == 0)) {
        self.webButton.enabled = NO;
    } else {
        self.webButton.enabled = YES;
    }

    //Hidig Keyboard After User Hits the "Calculate" button
    [self.view endEditing:YES];

}






//USE THIS IN A LITTLE BIT

//Bool. If nothing is entered into the textfields, calculation cannot be performed
//if (self.valueOne == @"") {
//    <#statements#>
//}





#pragma - Mobile Makers Segue

- (IBAction)segue:(id)sender{
    [self performSegueWithIdentifier:@"website" sender:self];
}

@end
