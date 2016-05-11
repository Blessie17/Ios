//
//  calculatorBrain.m
//  RPNCalculator
//
//  Created by epita on 04/05/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "calculatorBrain.h"

@implementation calculatorBrain

-(NSMutableArray *) operandArray{
    if (!self.operandArray) {
        self.operandArray=[[NSMutableArray alloc] init];
    }
    return self.operandArray;
}
-(void) pushOperand:(double)operand
{
   
NSNumber * operandNumber= [[NSNumber alloc] initWithDouble:operand];
 [_operandArray addObject:operandNumber];
    
}

-(double) performOperation: (NSString *)Operand
{
    // 4 if statements for each operands
    //
    //remove last object
    //temporary to new last object of the arry, push array
    NSNumber *temp;
    if ([Operand isEqual:@"+"]) {
        temp= [self.operandArray lastObject];
        [self.operandArray removeLastObject];
        temp = [NSNumber numberWithDouble:[temp doubleValue] + [[self.operandArray lastObject] doubleValue]];
    }
    if ([Operand isEqual:@"-"]) {
        _operandArray.removeLastObject;
    }
    if ([Operand isEqual:@"*"]) {
        _operandArray.removeLastObject;
    }
    if ([Operand isEqual:@"/"]) {
        _operandArray.removeLastObject;
    }
  return 0;
    
}
@end
