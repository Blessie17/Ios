//
//  ViewController.m
//  RPNCalculator
//
//  Created by epita on 20/04/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)button_calc:(UIButton *)sender {
    //NSLog(@"Button %@ pressed",sender.currentTitle);
    //UILabel *display_Label = _label_Zero;
    NSString *text =_label_Zero.text;
    _label_Zero.text=[text stringByAppendingString: sender.currentTitle];
    NSInteger no=[_label_Zero.text integerValue];
    _label_Zero.text =[NSString stringWithFormat:@"%ld", (long) no];
    
}
- (IBAction)push_Operator:(UIButton *)sender {
    
    
    
}
- (IBAction)button_Enter:()sender {
    
    
}
@end
