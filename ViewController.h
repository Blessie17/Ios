//
//  ViewController.h
//  Converter
//
//  Created by epita on 18/05/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate,UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *unitMeasureField;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerViewMeasurement1;
@property (weak,nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *unitConversionFromToPicker;

@end

