//
//  ModalViewController.m
//  tabtesting
//
//  Created by Anand Kumar on 5/12/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)modalpush:(id)sender {
    
    
    [self dismissViewControllerAnimated:YES completion:nil];  //skip to the next screen
    
    
    UINavigationController *navCon = self.presentingViewController;
    [navCon popToRootViewControllerAnimated:YES];
    
    
  // self.tabBarController.selectedIndex=0; //to go to the first tab controller.
  // [self.navigationController popToRootViewControllerAnimated:NO];  //to reset back to the main navi control
  
   /*
    
   UIViewController *middleVC = self.navigationController.viewControllers[2];
    
       UIViewController *middleVC = self.navigationController.viewControllers[count-2]; --to go back by minussing the count..
    
    [self.navigationController popToViewController:middleVC animated:YES];
    
    
    int count = self.navigationController.viewController.count;
 
    
    ------------------------casting
    -(view)WillLoad {
    
    FirstViewController *firstVC = (FirstViewController*)self.presentingViewController;
     //object class casting.......
     presentin
    
     firstVC.publicImage= [UIImage imagenames:@"cat.jpg"];   //assigning image in the cast
     
}

     
     */
     
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
