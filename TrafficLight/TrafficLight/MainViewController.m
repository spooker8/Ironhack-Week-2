//
//  MainViewController.m
//  TrafficLight
//
//  Created by Anand Kumar on 5/11/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "MainViewController.h"
#import "ViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController


- (void)viewDidLoad {
    [super viewDidLoad];  //super points to the parent class.
    // Do any additional setup after loading the view.
    
    
    
        
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





-(IBAction)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{ //push the data to the next viewcontroller
    
    
    ViewController *newVC = segue.destinationViewController; //
    
    NSNumber *redField = [NSNumber numberWithDouble:self.red.text.doubleValue];
    NSNumber *yellowField = [NSNumber numberWithDouble:self.yellow.text.doubleValue];
    NSNumber *greenField = [NSNumber numberWithDouble:self.green.text.doubleValue];
    
    //convert test point to ns number pointer

    newVC.durationsArrayCall = @[redField,yellowField,greenField];
    //place all the info above in an array push it to
    

}





@end
