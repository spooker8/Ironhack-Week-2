//
//  TrafficLightModel.h
//  TrafficLight
//
//  Created by Anand Kumar on 5/11/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TrafficLightModel : NSObject


@property (nonatomic, strong) NSArray *durations;  //name of the array made


-(instancetype)initWithArray: (NSArray *) durationArray;

-(double)durationForIndex:(int)index;



@end



//model only takes care of the data..
//only the duration should b here.
