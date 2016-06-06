//
//  ViewController.m
//  Converter
//
//  Created by epita on 18/05/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic)NSArray *unitMeasurementArray;

@end

@implementation ViewController
@synthesize unitMeasureField = _unitMeasureField;
@synthesize unitMeasurementArray=_unitMeasurementArray;


- (void)viewDidLoad {
    [super viewDidLoad];
    _unitMeasurementArray = @[@"Length",@"Weight",@"Temperature"];
    self.unitMeasureField.delegate=self;
    _pickerViewMeasurement1.delegate=self;
    _pickerViewMeasurement1.dataSource=self;
    [self.view addSubview:_pickerViewMeasurement1];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)selectMeasurementUnit:(id)sender {
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"%@", textField);
    return YES;
}

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _unitMeasurementArray.count;
}
- (NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
 return [_unitMeasurementArray objectAtIndex:row];
}
@end
