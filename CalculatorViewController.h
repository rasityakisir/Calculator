//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Rasit Yakisir on 4/13/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

@interface CalculatorViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *display;
- (IBAction)onDigitPressed:(UIButton*)sender;
- (IBAction)onOperatorPressed:(UIButton*)sender;
- (IBAction)onClearPressed:(UIButton*)sender;

@end
