//
//  AnimalModel.m
//  DogCat
//
//  Created by Anand Kumar on 5/12/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "AnimalModel.h"

@implementation AnimalModel


+(instancetype) sharedModel
{
    static AnimalModel *sharedInstance = nil;
    if (sharedInstance == nil) {
        sharedInstance = [[AnimalModel alloc] init];
        sharedInstance.animalCount = 0;
        
    }
    
    return sharedInstance;
}



-(instancetype)init{
    
    self = [super init];
    
    
    if(self){
        
        self.arrayOfAnimals = @[@"cat.jpg",@"dog.jpg"];
        
    }
    
    return self;
}

@end
