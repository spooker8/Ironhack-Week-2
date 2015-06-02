//
//  ImageNavigationViewController.m
//  CrazyTabModalPushDogCatShit
//
//  Created by Anand Kumar on 5/12/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "ImageNavigationViewController.h"
#import "FirstViewController.h"

@interface ImageNavigationViewController ()

@end

@implementation ImageNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.showAnimalImage.image = self.myimage;
    
    // Do any additional setup after loading the view.
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
