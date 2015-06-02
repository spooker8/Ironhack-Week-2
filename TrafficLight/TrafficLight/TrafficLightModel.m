//
//  TrafficLightModel.m
//  TrafficLight
//
//  Created by Anand Kumar on 5/11/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "TrafficLightModel.h"


@interface TrafficLightModel()


@end

@implementation TrafficLightModel

@synthesize durations;

    
-(instancetype)initWithArray: (NSArray *) durationArray
{
    
    self = [super init];   
    
    if (self) {

        
    }
    
    self.durations = [NSArray arrayWithArray:durationArray]; //create instance of the object with an array
    
            
    
    
    return self;
}




-(double)durationForIndex:(int)index
{
    NSNumber* duration = self.durations[index];
    
    return duration.doubleValue;
    
}


@end