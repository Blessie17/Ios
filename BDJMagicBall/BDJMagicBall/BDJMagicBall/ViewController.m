//
//  ViewController.m
//  BDJMagicBall
//
//  Created by epita on 11/05/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _magicModel =[[MagicBallModel alloc] init];
    [_magicModel initansArrayValues];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)getAnswers:(UIButton *)sender {
    _answerLabel.text =[_magicModel performOperation];
}

@end
