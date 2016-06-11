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
@property (weak, nonatomic) IBOutlet UIPickerView *pickerViewMeasurement1;//UI Picker for selecting the unit for input value.
@property (weak,nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *unitConversionFromToPicker;// UI picker to select from and to conversion units.
@property (strong, nonatomic) IBOutlet UIImageView *CurrentImage;
@property (strong, nonatomic) IBOutlet UIButton *convertButton;

@end

