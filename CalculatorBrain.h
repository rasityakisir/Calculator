//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Rasit Yakisir on 4/14/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

- (void)pushOperand:(NSString*)aOperand;

- (BOOL)pushOperator:(NSString*) aOperator
     operationResult:(double*) aResult;

- (void)clear;

@end
