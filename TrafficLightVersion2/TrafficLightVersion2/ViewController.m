//
//  ViewController.m
//  TrafficLightVersion2
//
//  Created by Anand Kumar on 5/11/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender

{
    DetailViewController  *newVC = segue.destinationViewController;
    
    NSNumber *redField = [NSNumber numberWithDouble:self.red.text.doubleValue];
    NSNumber *yellowField = [NSNumber numberWithDouble:self.yellow.text.doubleValue];
    NSNumber *greenField = [NSNumber numberWithDouble:self.green.text.doubleValue];


    NSArray *lights = @[redField,yellowField,greenField];
    
     //NSDictionary *views = @{ @"blue":blue, @"red":red, @"green":green };  //why nsdictionary?? to store the color
    
    newVC.trafficLightArraySend = lights;
    
    
}

@end
