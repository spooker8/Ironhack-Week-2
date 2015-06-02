//
//  SaveCharacterViewController.h
//  ComplicatedModel
//
//  Created by Anand Kumar on 5/20/15.
//  Copyright (c) 2015 Georgios Pessios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CharacterModel.h"

@protocol SaveCharacterViewControllerDelegate <NSObject>

@required
-(void)didEditCharacter:(CharacterModel*)model;

@end



@interface SaveCharacterViewController : UIViewController


@property (weak, nonatomic)
id<SaveCharacterViewControllerDelegate> delegate;


@property (weak, nonatomic) IBOutlet UITextField *editTextField;
@property (weak, nonatomic) IBOutlet UIImageView *editImageView;

@property (nonatomic, strong) CharacterModel *currentCharacter;


@end
