//
//  ViewController.m
//  DogCat
//
//  Created by Anand Kumar on 5/12/15.
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


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender


{
    
    
    if ([segue.identifier isEqualToString:@"dogPerson"]) {
        
         ((DetailViewController *)segue.destinationViewController).myImage= [UIImage imageNamed:@"dog.jpg"];
                                                                 
        
          ((DetailViewController *)segue.destinationViewController).mytitle=@"Dog Photo";
        
        
     
      //  self.navigationItem.title = [[NSString alloc] initWithFormat:@"Dog Photo"];
        
    }

    if ([segue.identifier isEqualToString:@"catPerson"]) {
        
        
       // DetailViewController *mdvc = segue.destinationViewController;
       // mdvc.myTitle = [[NSString alloc] initWithFormat:@"Custom Title"];
    
        
        
        ((DetailViewController *)segue.destinationViewController).myImage = [UIImage imageNamed:@"cat.jpg"];
        
         ((DetailViewController *)segue.destinationViewController).mytitle=@"Cat Photo";
        
        
      //  DetailViewController.title=  [[NSString alloc] initWithFormat:@"Cat Photo"];
        // self.navigationItem.title = [[NSString alloc] initWithFormat:@"Cat Photo"];
    //   self.title = [[NSString alloc] initWithFormat:@"Cat Photo"];
      
        
    }


}


//identifers is catPerson  go to nextView controller and show cat photo  and dogPerson  show dog photo



@end
