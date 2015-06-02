//
//  ViewController.m
//  UICollectionViewDemo
//
//  Created by Anand Kumar on 5/15/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "ViewController.h"
#import "MyCell.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

//to use the  of the file..

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 5;
    
    
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath; {
    
    
    
    MyCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CharacterCell" forIndexPath:indexPath];

    
    
    //its a method to tell u the index path, for the section and cell.similar to tableview.
    
    
    UIImage *photo = [UIImage imageNamed:@"c3po.png"];
    cell.photoView.image = photo;
    
    
    
    
    return cell;
    
    
    
    
}


-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    CGFloat extraWidth = indexPath.row * 20;
    CGSize size = CGSizeMake(100 + extraWidth, 200);
    
    
//    
//    CGFloat extraWidth = indexPath.row * 20;
//    
//    CGSize size =  CGSizeMake(100 + extraWidth, 200);
//    
  return size;
    
    
    
}


- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section; {
    
    //flow layout methods.
    
    
    
    UIEdgeInsets insets = UIEdgeInsetsMake(0, 0, 0, 0);
    
    return insets;
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
