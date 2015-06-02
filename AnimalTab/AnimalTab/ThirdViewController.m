//
//  ThirdController.m
//  AnimalTab
//
//  Created by Anand Kumar on 5/12/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "ThirdViewController.h"
#import "AnimalModel.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}



-(void)viewDidAppear:(BOOL)animated {
    
    self.viewCounter.text = [NSString stringWithFormat:@" %d Animal Count", [AnimalModel sharedModel].animalCount];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
