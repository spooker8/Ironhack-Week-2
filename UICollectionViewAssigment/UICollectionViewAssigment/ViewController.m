//
//  ViewController.m
//  UICollectionViewAssigment
//
//  Created by Anand Kumar on 5/15/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "ViewController.h"
#import "ShowModel.h"
#import "CharacterModel.h"
#import "CollectionViewCellSimpsons.h"
#import "CollectionViewCellStarWars.h"
#import "DetailCharacterViewController.h"



@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate>

@property(nonatomic, strong)NSArray *shows;

@property(nonatomic) int index;
@property (nonatomic) long indexOfShowSelected;
@property  (nonatomic) long indexOfCharacterSelected;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
   self.shows = [ShowModel arrayOfShows];
   }



- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return self.shows.count;
    
    //it shows the count of shows
    
}





-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    
    
    
    ShowModel *sectionShowModel = self.shows[section]; //to show the number of sections.
    
    return sectionShowModel.showCharacters.count;  //return the count of the characters in the showCharacters one show.
    
    //collection view is asking how many items are in the section.
    
}




- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath; {
   
     ShowModel *show = self.shows[indexPath.section];
    
    if (indexPath.section==0) {
        
        

        
        CollectionViewCellSimpsons *cellSimpsons = [collectionView dequeueReusableCellWithReuseIdentifier:@"SimpsonCell" forIndexPath:indexPath];
       
        CharacterModel *oneCharacter = show.showCharacters[indexPath.row];
        cellSimpsons.labelSimpsons.text = oneCharacter.name;
        
       
        UIImage *characterSimpsonsImage = [UIImage imageNamed:oneCharacter.image];
        cellSimpsons.imageViewSimpsons.image =characterSimpsonsImage;
        
        
        return cellSimpsons;
        
    } else {
   
    
   
    
    CollectionViewCellStarWars *cellStarWars = [collectionView dequeueReusableCellWithReuseIdentifier:@"StarWarsCell" forIndexPath:indexPath];
    CharacterModel *twoCharacter = show.showCharacters[indexPath.row];
    cellStarWars.labelStarWars.text= twoCharacter.name;
    
    UIImage *characterStarWarImage = [UIImage imageNamed:twoCharacter.image];
    cellStarWars.imageViewStarWars.image = characterStarWarImage;
    
    return cellStarWars;

    
    }
    
    
    //its a method to tell u the index path, for the section and cell.similar to tableview.
    
    
}


-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    CGFloat extraWidth = indexPath.row * 10;
    CGSize size = CGSizeMake(100 + extraWidth, 120);
    
    return size;
    
    
    
}


- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section; {
    
    //flow layout methods.
    
    
    
    UIEdgeInsets insets = UIEdgeInsetsMake(0, 0, 0, 0);
    
    return insets;
    
    
    
}


- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    self.indexOfShowSelected = indexPath.section;
    self.indexOfCharacterSelected = indexPath.row;
    
    return YES;
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
   
        
        DetailCharacterViewController *detailCharacterVC = (DetailCharacterViewController *)segue.destinationViewController;
    
    ShowModel *show = self.shows[self.indexOfShowSelected];
        
        //send the instance
    detailCharacterVC.selectedCharacter = show.showCharacters[self.indexOfCharacterSelected];
    

    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
