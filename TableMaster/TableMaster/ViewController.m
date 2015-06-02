//
//  ViewController.m
//  TableMaster
//
//  Created by Anand Kumar on 5/13/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "ViewController.h"
#import "Simpson.h"
#import "PhotoViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>




@end

@implementation ViewController

#define KEY_FOR_NAME @"name"
#define KEY_FOR_IMAGENAME @"imageName"

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *arraySimpsons= [NSMutableArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource: @"Simpsons" ofType: @"plist"]];
    
     self.simpsonData = [NSMutableArray array];
    
     for (NSDictionary *simpsonDictionary in arraySimpsons) {
         
         NSString *name = simpsonDictionary[KEY_FOR_NAME];
         NSString *imageName = simpsonDictionary[KEY_FOR_IMAGENAME];
         
         
         Simpson *realSimpson = [[Simpson alloc] initWithName:name image:imageName];
    
         [self.simpsonData addObject: realSimpson];
         
         
     }
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return self.simpsonData.count;
    

   }


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    

    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StudentCell"];
    

    
    
    {
   
        Simpson *showSimpsonData = self.simpsonData [indexPath.row];
  
        cell.textLabel.text = showSimpsonData.name;
        
        NSString* imageName = showSimpsonData.imageName;
       
        cell.imageView.image =  [UIImage imageNamed:imageName];
        
     //   cell.detailTextLabel.text=[NSString stringWithFormat:@"%ld.",(long)indexPath.row];
        
        

    }
    
    return cell;

    
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
//    NSDictionary *character = self.simpsonData [indexPath.row];
//     NSString *imageName = character [@"imageName"];  //whats the significant of this code
    
   Simpson *showSimpsonData = self.simpsonData [indexPath.row];
    NSString* imageName = showSimpsonData.imageName;
    
    UIImage *characterPhoto = [UIImage imageNamed:imageName];
    
    PhotoViewController *photoVC = [self.storyboard
                                    instantiateViewControllerWithIdentifier:@"PhotoController"];
    
    photoVC.detailViewPhoto = characterPhoto;
                                    
                                    
            [self.navigationController pushViewController:photoVC animated:YES];
                                    
    
    
}




-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
   
        return @"Simpsons";
    
    }
    


-(NSString *) tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    
           return @"Footer Simpsons";
        
    }
    




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
