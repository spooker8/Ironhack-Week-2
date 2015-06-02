//
//  FirstViewController.m
//  AnimalTab
//
//  Created by Anand Kumar on 5/12/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "FirstViewController.h"
#import "AnimalModel.h"

@interface FirstViewController ()



@property (weak, nonatomic) IBOutlet UIImageView *dogImageView;


@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
self.title = @"Dog";
    
    
    
}


-(void)viewDidAppear:(BOOL)animated {
    
     [AnimalModel sharedModel].animalCount++;
 //   UIImage *catImage = [UIImage imageNamed:[[[AnimalModel sharedModel]arrayOfAnimals]lastObject]];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
