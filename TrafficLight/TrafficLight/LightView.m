//
//  LightView.m
//  TrafficLight
//
//  Created by Anand Kumar on 5/11/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "LightView.h"

@implementation LightView


-(void)awakeFromNib  //its a method that is being called when the view loads from the storyboard
{
    
    NSLog(@"awake from NIB");
    
    
   // self.layer.masksToBounds = YES;   //masks to bounds clips the content to its frame
    self.layer.cornerRadius = self.frame.size.width/3;  //code to make it circle
    self.layer.borderWidth = 3;
    self.layer.borderColor = [UIColor blueColor].CGColor;
    
    self.layer.shadowOpacity = 0.1;
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowRadius = 15;
    self.layer.shadowOffset= CGSizeMake(30,30);
    
    
    
}

@end


//the story behind NIB--