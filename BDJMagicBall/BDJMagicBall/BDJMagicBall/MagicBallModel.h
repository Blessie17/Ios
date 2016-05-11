//
//  MagicBallModel.h
//  BDJMagicBall
//
//  Created by epita on 11/05/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MagicBallModel : NSObject
@property (nonatomic)  NSArray * answerArray;
-(NSString *) performOperation;
-(void) initansArrayValues;

@end
