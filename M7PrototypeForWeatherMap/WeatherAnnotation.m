//
//  WeatherAnnotation.m
//  M7PrototypeForWeatherMap
//
//  Created by Chen Meisong on 14-8-26.
//  Copyright (c) 2014年 chenms.m2. All rights reserved.
//

#import "WeatherAnnotation.h"

@interface WeatherAnnotation()
@end

@implementation WeatherAnnotation
- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate{
    self = [super init];
    if (self) {
        _coordinate = coordinate;
        _cityType = WACityTypeNormal;
    }
    
    return self;
}

#pragma mark - public
- (void)setupCoordinate:(CLLocationCoordinate2D)coordinate{
    _coordinate = coordinate;
}

#pragma mark - description
- (NSString *)description{
    return [NSString stringWithFormat:@"城市名(%@) 纬度(%.6f) 经度(%.6f)", self.city.name, self.coordinate.latitude, self.coordinate.longitude];
}
@end
