//
//  ViewController.h
//  BDJMagicBall
//
//  Created by epita on 11/05/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MagicBallModel.h"
@interface ViewController : UIViewController
@property (weak,nonatomic) IBOutlet UILabel *answerLabel;
@property (nonatomic) MagicBallModel* magicModel;

@end

