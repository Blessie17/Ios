//
//  converterModel.m
//  Converter
//
//  Created by epita on 10/06/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "converterModel.h"
#import <math.h>
@implementation converterModel


-(double) LengthConversion:(NSString *)length1 :(NSString *)length2 :(double)val
{
    if ([length1 isEqualToString:@"Meter"])
    {
        if ([length2 isEqualToString:@"Kilometer"])
        {
            return val*0.001;
        }
        else if ([length2 isEqualToString:@"Mile"])
        {
            return val*0.000621371;
        }
        else if ([length2 isEqualToString:@"Foot"])
        {
            return val*3.28084;
        }
        else
        {
            return val;
        }
    }
    else if([length1 isEqualToString:@"Kilometer"])
    {
        if ([length2 isEqualToString:@"Meter"])
        {
            return val*1000;
        }
        else if ([length2 isEqualToString:@"Mile"])
        {
            return val*0.621371;
        }
        else if ([length2 isEqualToString:@"Foot"])
        {
            return val*3280.84;
        }
        else
        {
            return val;
        }
        
    }
    else if ([length1 isEqualToString:@"Mile"])
    {
        if ([length2 isEqualToString:@"Meter"])
        {
            return val*1609.34;
        }
        else if ([length2 isEqualToString:@"Kilometer"])
        {
            return val*1.60934;
        }
        else if ([length2 isEqualToString:@"Foot"])
        {
            return val*5280;
        }
        else
        {
            return val;
        }
    }
    else if ([length1 isEqualToString:@"Foot"])
    {
        if ([length2 isEqualToString:@"Meter"])
        {
            return val*0.3048;
        }
        else if ([length2 isEqualToString:@"Kilometer"])
        {
            return val*0.0003048;
        }
        else if ([length2 isEqualToString:@"Mile"])
        {
            return val*0.000189394;
        }
        else
        {
            return val;
        }
        
    }
    else
    {
        return val;
    }
}
-(double) AreaConversion:(NSString *)area1 :(NSString *)area2 :(double)val
{
    if ([area1 isEqualToString:@"Square Kilometer"])
    {
        if ([area2 isEqualToString:@"Square Meter"])
        {
            return val*pow(10, 6);
        }
        else if ([area2 isEqualToString:@"Square foot"])
        {
            return val*10.76391041671*pow(10, 6);
        }
        else
        {
            return val;
        }
    }
    else if ([area1 isEqualToString:@"Square Meter"])
    {
        if ([area2 isEqualToString:@"Square Kilometer"])
        {
            return val*pow(10,-6);
        }
        else if ([area2 isEqualToString:@"Square foot"])
        {
            return val*10.76391041671;
        }
        else
        {
            return val;
        }
    }
    else if ([area1 isEqualToString:@"Square foot"])
    {
        if ([area2 isEqualToString:@"Square Kilometer"])
        {
            return val*9.290304*pow(10, -8);
        }
        else if ([area2 isEqualToString:@"Square Meter"])
        {
            return val*9.290304*pow(10, -2);
        }
        else
        {
            return val;
        }
    }
    else
    {
        return val;
    }
}
-(double) TemperatureConversion:(NSString *)temp1 :(NSString *)temp2 :(double)val
{
    if ([temp1 isEqualToString:@"Celsius"])
    {
        if ([temp2 isEqualToString:@"Kelvin"])
        {
            return val+273.15;
        }
        else if ([temp2 isEqualToString:@"Farenheit"])
        {
            return val+32;
        }
        else
        {
            return val;
        }
    }
    else if ([temp1 isEqualToString:@"Kelvin"])
    {
        if ([temp2 isEqualToString:@"Celsius"])
        {
            return val-273.15;
        }
        else if ([temp2 isEqualToString:@"Farenheit"])
        {
            return val-459.67;
        }
        else
        {
            return val;
        }
    }
    else if ([temp1 isEqualToString:@"Farenheit"])
    {
        if ([temp2 isEqualToString:@"Kelvin"])
        {
            return val+255.372;
        }
        else if ([temp2 isEqualToString:@"Celsius"])
        {
            return val-17.7778;
        }
        else
        {
            return val;
        }
    }
    else
    {
        return val;
    }
}

@end
