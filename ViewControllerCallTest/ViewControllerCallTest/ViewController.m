//
//  ViewController.m
//  ViewControllerCallTest
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
- (IBAction)presentButton:(id)sender {
    
    DetailViewController* details = [self.storyboard instantiateViewControllerWithIdentifier:@"DETAILS"];
    
    
    [self presentViewController:details
                                animated:YES
                                completion :nil];
    
    
    //create the storyboard and name the storyboard class and call it from here.
    
    
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender

{
    if ([segue.identifier isEqualToString:@"DETAILS"]) {
        
        DetailViewController* details =
            segue.destinationViewController;
        details.text=@"Marin";
        
    }
    
        
        
    }



@end
