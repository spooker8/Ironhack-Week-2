//
//  AnimalModel.h
//  DogCat
//
//  Created by Anand Kumar on 5/12/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnimalModel : NSObject


@property (assign, nonatomic) int animalCount;

+(instancetype)sharedModel;



@end
