//
//  Simpson.h
//  TableMaster
//
//  Created by Anand Kumar on 5/13/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Simpson : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *imageName;


-(instancetype) initWithName:(NSString *)name image:(NSString *)imageName;


@end
