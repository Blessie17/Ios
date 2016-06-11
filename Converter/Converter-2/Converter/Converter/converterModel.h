//
//  converterModel.h
//  Converter
//
//  Created by epita on 10/06/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface converterModel : NSObject
-(double) LengthConversion:(NSString *)Fromlength :(NSString *)Tolength :(double)val;
-(double) AreaConversion:(NSString *)FromArea :(NSString *)ToArea :(double)val;
-(double) TemperatureConversion:(NSString *)FromTemp :(NSString *)Totemp :(double)val;
@end
