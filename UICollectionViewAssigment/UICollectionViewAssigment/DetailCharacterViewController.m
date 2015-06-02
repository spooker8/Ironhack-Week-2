//
//  DetailCharacterViewController.m
//  UICollectionViewAssigment
//
//  Created by Anand Kumar on 5/15/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "DetailCharacterViewController.h"
#import "ViewController.h"
#import "ShowModel.h"
#import "CharacterModel.h"
#import "CollectionViewCellSimpsons.h"
#import "CollectionViewCellStarWars.h"
#import "DetailCharacterViewController.h"


@interface DetailCharacterViewController ()

@end

@implementation DetailCharacterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.detailImageView.image = [UIImage imageNamed:self.selectedCharacter.image];
    
    


    
        
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
