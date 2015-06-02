//
//  SaveCharacterViewController.m
//  ComplicatedModel
//
//  Created by Anand Kumar on 5/20/15.
//  Copyright (c) 2015 Georgios Pessios. All rights reserved.
//

#import "SaveCharacterViewController.h"
#import "CharacterModel.h"
#import "GeorgeCell.h"

@interface SaveCharacterViewController ()

@end

@implementation SaveCharacterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}








- (IBAction)actionEdit:(id)sender {
    
    NSString* name = self.editTextField.text;
    CharacterModel* newCharacter =
    [[CharacterModel alloc] initWithNameOfCharacter:name
                            andWithImageOfCharacter:@"lisa.png"];
    
    [self.delegate didEditCharacter:newCharacter];
    
    [self.navigationController
     popViewControllerAnimated:YES];
}





@end
