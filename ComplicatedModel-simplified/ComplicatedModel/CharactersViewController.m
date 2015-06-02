//
//  CharactersViewController.m
//  ComplicatedModel
//
//  Created by Georgios Pessios on 5/14/15.
//  Copyright (c) 2015 Georgios Pessios. All rights reserved.
//

#import "CharactersViewController.h"
#import "CharacterModel.h"
#import "GeorgeCell.h"
#import "FormViewController.h"


@interface CharactersViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic,strong) NSArray *characters;

@end

@implementation CharactersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.characters = [CharacterModel allCharacters];
}

#pragma mark - UITableViewDataSource Protocol required methods implementation

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.characters count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    GeorgeCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CHARACTER"];
    CharacterModel *oneCharacter = self.characters[indexPath.row];
    cell.nameOfCharacter.text= oneCharacter.name;
    
    UIImage *showImage = [UIImage imageNamed:oneCharacter.image];
    cell.imageOfCharacter.image = showImage;;
    
    return cell;
}


#pragma mark - UITableViewDataSource Protocol required methods implementation

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


#pragma mark - UITableViewDelegate optional methods implementation

-(void)didCreateCharacter:(CharacterModel *)model
{
    //ADD NEW CHARACTER - UPDATING OUR MODEL DATA
    NSMutableArray* mutableCharacters =
        [self.characters mutableCopy];
    [mutableCharacters addObject: model];
    
    self.characters = [mutableCharacters copy];
    
    //UPDATING THE VIEW
    [self.tableView reloadData];
    
    [self saveCharactersToDisc];
}

-(void)saveCharactersToDisc
{
    NSMutableArray* convertedCharacters =
        [NSMutableArray array];
    
    //TODO: add converting the model to dictionary here
    
    for (CharacterModel *model in self.characters) {
        NSDictionary *convertedModel =
        
        
        //
        [model toDictionary];
        [convertedCharacters addObject:convertedModel];
    }
    
    
    
    
    
    
    //NOW convertedShows CONTAINS ONLY STRINGS, NUMBERS,
    //ARRAYS AND DICTIONARY
    NSArray *paths = NSSearchPathForDirectoriesInDomains(
      NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *documentsDirectory = paths.firstObject;
    // documentsDirectory is smth like "/user/Marin/documents"
    
    NSString *destinationPath = [documentsDirectory
                                 stringByAppendingPathComponent:
                                 @"data.plist"];
    
    //NOW TELL THE ARRAY TO SAVE
    [convertedCharacters writeToFile:destinationPath
                     atomically:YES];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue
                sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"AddSegue"]) {

        FormViewController* formVC =
            segue.destinationViewController;
        formVC.delegate = self;
    }
}

@end
