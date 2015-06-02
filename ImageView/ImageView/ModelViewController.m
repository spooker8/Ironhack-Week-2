//
//  ModelViewController.m
//  ImageView
//
//  Created by Anand Kumar on 5/11/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "ModelViewController.h"

@interface ModelViewController ()

@end

@implementation ModelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)didTapExitButton:(id)send {
    [self dismissViewControllerAnimated:YES completion:^{
        
        //everything that goes here get executed after the viewconteller disappears
        
        //do something with saving and whatever
        
        
        
    }];
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
