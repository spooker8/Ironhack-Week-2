//
//  DetailsViewController.m
//  ComplicatedModel
//
//  Created by Marin Todorov on 5/20/15.
//  Copyright (c) 2015 Georgios Pessios. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear: animated];
    
    //SHOW THE CHARACTER DETAILS
    self.photo.image = [UIImage imageNamed: self.selectedCharacter.image];
    self.nameField.text = self.selectedCharacter.name;
    
}

- (IBAction)actionSave:(id)sender {
    
    //GET THE NEW NAME
    self.selectedCharacter.name = self.nameField.text;
    
    //CALL DELEGATE METHOD TO EDIT CHARACTER
    [self.delegate didEditCharacter:self.selectedCharacter withIndex:self.indexPath];
    
    //POP TO PREVIOUS SCREEN
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)actionDelete:(id)sender
{
    // MAKE ALL USER INTERFACE ELEMENTS FADE OUT
    [UIView animateWithDuration:1.0
                     animations:^{
                         self.photo.alpha = 0.0;
                         self.nameField.alpha = 0.0;
                         self.deleteButton.alpha = 0.0;
                     } completion:^(BOOL finished) {
                         
                         //CALL animateViewToRed WHEN FINISHED
                         [self animateViewToRed];
                     }];
}

-(void)animateViewToRed
{
    // MAKE THE VIEW CONTROLLER VIEW ANIMATE TO RED COLOR
    [UIView animateWithDuration:1.0
                     animations:^{
                         self.view.backgroundColor = [UIColor redColor];
                     } completion:^(BOOL finished) {
                         
                         //CALL DELEGATE METHOD TO EDIT CHARACTER
                         [self.delegate didDeleteCharacterAtIndex: self.indexPath];

                         //POP TO PREVIOUS SCREEN
                         [self.navigationController popViewControllerAnimated:YES];
                     }];
}

@end
