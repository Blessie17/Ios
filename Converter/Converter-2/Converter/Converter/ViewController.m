//
//  ViewController.m
//  Converter
//
//  Created by epita on 18/05/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "ViewController.h"
#import "converterModel.h"

@interface ViewController ()
@property (strong, nonatomic)NSArray *unitMeasurementArray;
@property (strong, nonatomic)NSArray *unitConversionOutputArray;
@property (strong, nonatomic)NSArray *unitConversionOutputArrayLength;
@property (strong, nonatomic)NSArray *unitConversionOutputArrayTemp;
@property(strong,nonatomic) converterModel *convert;
@end

@implementation ViewController
@synthesize resultLabel=_resultLabel;
@synthesize unitMeasureField = _unitMeasureField;
@synthesize unitMeasurementArray=_unitMeasurementArray;
@synthesize unitConversionOutputArray=_unitConversionOutputArray;
@synthesize unitConversionOutputArrayLength=_unitConversionOutputArrayLength;
@synthesize unitConversionOutputArrayTemp=_unitConversionOutputArrayTemp;
@synthesize CurrentImage=_CurrentImage;
@synthesize convert=_convert;

- (void)viewDidLoad {
    [super viewDidLoad];
    [_unitMeasureField setDelegate:self];
    _unitMeasurementArray = @[@"Area",@"Length",@"Temperature"];
    _unitConversionOutputArray=@[@"Square Kilometer",@"Square Meter",@"Square foot"];
    _unitConversionOutputArrayLength=@[@"Meter",@"Kilometer",@"Mile",@"Foot"];
    _unitConversionOutputArrayTemp=@[@"Celsius",@"Farenheit",@"Kelvin"];
     self.unitMeasureField.delegate=self;
    _pickerViewMeasurement1.delegate=self;
    _pickerViewMeasurement1.dataSource=self;
    [self.view addSubview:_pickerViewMeasurement1];
    _unitConversionFromToPicker.delegate=self;
    _unitConversionFromToPicker.dataSource=self;
    _CurrentImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Application_background.jpg"]];
    _CurrentImage.frame = self.view.bounds;
    [[self view] addSubview:_CurrentImage];
    [_CurrentImage.superview sendSubviewToBack:_CurrentImage];
    self.convert =[[converterModel alloc] init];
    self.convertButton.backgroundColor = [UIColor colorWithRed: 0.875f green: 0.839f blue: 0.703f alpha: 1.000f];
    [_convertButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)selectMeasurementUnit:(id)sender {
   
    if ([_unitMeasureField hasText])
    {
    //Fetching value, Measurement Unit, From Unit , To Unit of conversion from View.
    double inputVal=[_unitMeasureField.text doubleValue];
    NSLog(@"value %f",inputVal);
    NSInteger selectedRowPickerViewMeasurement = [self.pickerViewMeasurement1 selectedRowInComponent:0];
    NSInteger selectedRowFromUnit = [self.unitConversionFromToPicker selectedRowInComponent:0];
    NSInteger selectedRowToUnit = [self.unitConversionFromToPicker selectedRowInComponent:1];
    
    //NSString *pickerViewMeasurement = [[self.pickerViewMeasurement1 delegate] pickerView:self.pickerViewMeasurement1 titleForRow:selectedRowPickerViewMeasurement forComponent:0];
    NSString *FromUnit=[[self.unitConversionFromToPicker delegate] pickerView:self.unitConversionFromToPicker titleForRow:selectedRowFromUnit forComponent:0];
    NSString *ToUnit=[[self.unitConversionFromToPicker delegate] pickerView:self.unitConversionFromToPicker titleForRow:selectedRowToUnit forComponent:1];
   if(selectedRowPickerViewMeasurement==0){
       _resultLabel.text = [NSString stringWithFormat:@"%f",[self.convert AreaConversion:FromUnit :ToUnit :inputVal]];
        NSLog(@"value %f",[self.convert AreaConversion:FromUnit :ToUnit :inputVal]);
   }
   else if(selectedRowPickerViewMeasurement==1)
   {
       _resultLabel.text = [NSString stringWithFormat:@"%f",[self.convert LengthConversion:FromUnit :ToUnit :inputVal]];
 NSLog(@"value %f",[self.convert LengthConversion:FromUnit :ToUnit :inputVal]);
    }
   else if(selectedRowPickerViewMeasurement==2)
   {
       _resultLabel.text = [NSString stringWithFormat:@"%f",[self.convert  TemperatureConversion:FromUnit :ToUnit :inputVal]];
       NSLog(@"value %f",[self.convert TemperatureConversion:FromUnit :ToUnit :inputVal]);
       
   }
        }
    else
        {
        _resultLabel.text=@"Enter a valid number to convert";
        }
}
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    
    NSArray *sep = [newString componentsSeparatedByString:@"."];
    if([sep count] > 2)
    {
        NSString *sepStr=[NSString stringWithFormat:@"%@",[sep objectAtIndex:1]];
        return !([sepStr length]>1);
    }
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSInteger selectedRow;
    if(pickerView==_pickerViewMeasurement1){
        //set picker view 2 according to picker 1
        [_unitConversionFromToPicker reloadAllComponents];
    }
    selectedRow = row;
    
}
-(NSArray*) getDataByPicker:(UIPickerView *)pickerView
{
    NSArray* content;
    if(pickerView==_pickerViewMeasurement1)
    {
        content= _unitMeasurementArray;
    }
    else
    {
        if([_pickerViewMeasurement1 selectedRowInComponent:0]==0)
        {
            content= _unitConversionOutputArray;

            }
        else if([_pickerViewMeasurement1 selectedRowInComponent:0]==1)
        {
            content= _unitConversionOutputArrayLength;
            
        }
       else if ([_pickerViewMeasurement1 selectedRowInComponent:0]==2)
        {
            content= _unitConversionOutputArrayTemp;
            
        }
    }
    return content;
}
-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    if(pickerView==_pickerViewMeasurement1)
    {
    return 1;
    }
    else
    {
    return 2;
    }
}
- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    NSArray* data = [self getDataByPicker:pickerView];
    return [data count];
}
- (NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSArray* data = [self getDataByPicker:pickerView];
    return [data objectAtIndex:row];
}
- (IBAction)validateInput:(id)sender {
    NSCharacterSet *validCharacterSet = [NSCharacterSet characterSetWithCharactersInString:@".0123456789"];
    NSCharacterSet *invalidCharacterSet = validCharacterSet.invertedSet;
    _unitMeasureField.text = [[_unitMeasureField.text componentsSeparatedByCharactersInSet:invalidCharacterSet] componentsJoinedByString:@""];
}
@end
