//
//  FirstViewController.m
//  CrazyTabModalPushDogCatShit
//
//  Created by Anand Kumar on 5/12/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "FirstViewController.h"
#import "ImageNavigationViewController.h"
#import "XIBViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    
}


-(IBAction)goToXib:(id)sender //xib storyboard go to button
{
    
    XIBViewController *myVC = [[XIBViewController alloc] initWithNibName:@"XIBViewController" bundle:nil];
    
    [self presentViewController:myVC animated: YES completion: nil];
    
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender


{
    
    //set identifier at the storyboard,click the round thing between the lines and set it there.
    //this is called casting
    
    if ([segue.identifier isEqualToString:@"catPerson"]) {
        
        
        UINavigationController *navController = (UINavigationController *)segue.destinationViewController;  //casting from the modal to view controller
        
        ((ImageNavigationViewController *)navController.topViewController).myimage= [UIImage imageNamed:@"cat"];
        
        
    }
    else if ([segue.identifier isEqualToString:@"dogPerson"]) {
        
        

        UINavigationController *navController = (UINavigationController *)segue.destinationViewController;
        
        ((ImageNavigationViewController *)navController.topViewController).myimage= [UIImage imageNamed:@"dog"];
        
       
        //from tab to navigation controller via modal, u got to do casting from UINavigation
        
        
    }
    
    
}




//
//-(IBAction)catPushButton:(id)sender {
//    
//    
//}
//
//
//-(IBAction)dogPushButton:(id)sender {
//    
//    
//}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
