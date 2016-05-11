//
//  MagicBallModel.m
//  BDJMagicBall
//
//  Created by epita on 11/05/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "MagicBallModel.h"

@implementation MagicBallModel

-(void) initansArrayValues
{
    self.answerArray= @[@"May be",@"Yes",@"No",@"Do it immediately",@"no idea",@"oh sorry try again",@"its right"];
}

-(NSString *) performOperation
{
    int randIndex = arc4random() % [self.answerArray count];
    return [self.answerArray objectAtIndex:randIndex];
}
@end
