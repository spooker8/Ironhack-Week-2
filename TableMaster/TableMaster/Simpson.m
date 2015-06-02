//
//  Simpson.m
//  TableMaster
//
//  Created by Anand Kumar on 5/13/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "Simpson.h"

@implementation Simpson


@synthesize name;
@synthesize imageName;

-(instancetype) initWithName:(NSString *)_name image:(NSString *)_imageName

{
    
    self = [self init];
    
    if (self) {
        
        
        self.name = _name;
        self.imageName = _imageName;
  
        
    }
    
    return self;
    
    
    
}




@end
