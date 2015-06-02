//
//  ViewController.m
//  TrafficLight
//
//  Created by Anand Kumar on 5/11/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "ViewController.h"
#import "TrafficLightModel.h"

@interface ViewController ()


@property (strong, nonatomic) IBOutlet UIView *lightBox;  //this is the box

@property (strong, nonatomic) TrafficLightModel* model;   //calling the class model to control the duration of the light

@property (assign, nonatomic) int currentLightIndex; // the index variable for the lightbox

@property (strong, nonatomic) NSArray* lightColors;   //property to declare the colors



@end

@implementation ViewController
@synthesize durationsArrayCall;  //make property from the 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.model = [[TrafficLightModel alloc] initWithArray:durationsArrayCall];
    self.currentLightIndex = -1;  //means starts before 0 .. always minus 1
    self.lightColors = @[
                               
                               [UIColor redColor],
                               [UIColor yellowColor],
                               [UIColor greenColor]
                               
                               ];
    
    [self nextLight];
    
}
-(void)nextLight
{
    
    self.currentLightIndex++;
    if(self.currentLightIndex == self.lightColors.count) {
        self.currentLightIndex = 0;
    }
    
    self.lightBox.backgroundColor =
    self.lightColors[self.currentLightIndex];
    double duration = [self.model
                       durationForIndex: self.currentLightIndex];
    
    [self performSelector:@selector(nextLight)
                                    withObject:nil
                                    afterDelay:duration];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


// [self performSelector:@selector(nextLight