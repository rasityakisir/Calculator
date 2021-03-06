//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Rasit Yakisir on 4/13/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "CalculatorViewController.h"
#import "CalculatorBrain.h"

@interface CalculatorViewController()
@property (nonatomic) BOOL isEnteringDigit;
@property (nonatomic, strong) CalculatorBrain* brain;
@end

@implementation CalculatorViewController

@synthesize display = mDisplay;
@synthesize isEnteringDigit = mIsEnteringDigit;
@synthesize brain = mBrain;

- (CalculatorBrain*)brain
{
    if( !mBrain )
    {
        mBrain = [[CalculatorBrain alloc] init];
    }
    
    return mBrain;
}


- (IBAction)onDigitPressed:(UIButton*)sender 
{
    NSLog( @"%@", sender.currentTitle );
    
    if( NO == self.isEnteringDigit )
    {
        self.display.text = sender.currentTitle;
        self.isEnteringDigit = YES;
    }
    else
    {
        self.display.text = [self.display.text stringByAppendingString:sender.currentTitle ];
    }
}

- (IBAction)onOperatorPressed:(UIButton*)sender 
{
    NSLog( @"operand pressed:%@", sender.currentTitle );
    
    [self.brain pushOperand:self.display.text];
    
    double result;
    BOOL operationPerformed = [self.brain pushOperator:sender.currentTitle operationResult:&result];
    
    if( operationPerformed )
    {
        self.display.text = [NSString stringWithFormat:@"%g", result];
    }
    else
    {
        //self.display.text = @"0";
        self.isEnteringDigit = NO;
    }
    
    self.isEnteringDigit = NO;
}

- (IBAction)onClearPressed:(UIButton*)sender 
{
    self.display.text = @"0";
    self.isEnteringDigit = NO;
    [self.brain clear];
}



@end
