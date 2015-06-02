//
//  DetailViewController.h
//  DogCat
//
//  Created by Anand Kumar on 5/12/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController


@property (strong, nonatomic) IBOutlet UIImageView *animalImage;

@property (strong, nonatomic) IBOutlet UILabel *viewCounter;


@property (nonatomic,copy) NSString *mytitle;
@property (strong, nonatomic) UIImage* myImage;


@end
