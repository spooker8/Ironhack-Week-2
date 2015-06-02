//
//  DetailViewController.m
//  DogCat
//
//  Created by Anand Kumar on 5/12/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "DetailViewController.h"
#import "AnimalModel.h"


@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize mytitle;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.title = mytitle;
    self.animalImage.image = self.myImage;
    //imageImage was a container and place
    
   [AnimalModel sharedModel].animalCount++;  // for incrementing the line model class which does the counting.
    self.viewCounter.text = [NSString stringWithFormat:@" %d Animal Count", [AnimalModel sharedModel].animalCount];
    
    
    

    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
