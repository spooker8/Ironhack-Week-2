//
//  DetailCharacterViewController.h
//  UICollectionViewAssigment
//
//  Created by Anand Kumar on 5/15/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CharacterModel.h"

@interface DetailCharacterViewController : UIViewController


// @property (strong, nonatomic) UIImage *detailViewPhoto;

@property (weak, nonatomic) IBOutlet UIImageView *detailImageView;

@property (strong, nonatomic) CharacterModel *selectedCharacter;


@end
