//
//  CalculatorGraphViewController.h
//  Calculator
//
//  Created by Rasit Yakisir on 4/14/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface CalculatorGraphViewController : UIViewController <UISplitViewControllerDelegate>

@property (nonatomic, strong) NSArray *program;
@property (nonatomic, weak) IBOutlet UILabel *functionDisplay;
@property (nonatomic, weak) IBOutlet UIToolbar *toolbar;

@end

