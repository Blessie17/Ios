//
//  calculatorBrain.h
//  RPNCalculator
//
//  Created by epita on 04/05/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface calculatorBrain : NSObject
@property (nonatomic) NSMutableArray *operandArray;
-(void) pushOperand:(double)operand;
-(double) performOperation: (NSString *)Operand;

@end
