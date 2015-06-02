//
//  DetailsViewController.m
//  ComplicatedModel
//
//  Created by Marin Todorov on 5/20/15.
//  Copyright (c) 2015 Georgios Pessios. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@property (assign, nonatomic) CGPoint beginningCenter;

@end

@implementation DetailsViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear: animated];
    
    //SHOW THE CHARACTER DETAILS
    self.photo.image = [UIImage imageNamed: self.selectedCharacter.image];
    self.nameField.text = self.selectedCharacter.name;
    
    // //step 5
    //enable interaction for the imageview by default its OFF, for button by default is YESS
   
    self.photo.userInteractionEnabled = YES ;
    
    
    
     //step 1
    //action is just a method, it just knows the target, the action is how i call the method.
    //does not care about the class, it only cares about the method name and an object
    //self is on the own view controller.
    //action is to call the method didTap
    //image will be notifying the object
    //uitapgesturerecognizer is a
    //didTap is a method : means takes one parameter, recognizer is the parameter
   
    UITapGestureRecognizer *tap =
    [[UITapGestureRecognizer  alloc] initWithTarget:self
                                             action:@selector(didTap:)];
    
    // step 3
    //attach recognizer to image view ..
    [self.photo addGestureRecognizer:tap];  // here is my image view
    
    
    
   // step a1
    //create slide to recognizer image
    UISwipeGestureRecognizer *panLeft=
    [[UISwipeGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(didPanLeft:)];
    
    
    //...step a3
    
    panLeft.direction = UISwipeGestureRecognizerDirectionRight;
    
    
    
   // ....step a4 attach left pan to imave view
    [self.photo addGestureRecognizer:panLeft];
    
    
    
    
  //  ..create pinch step b1
    UIPinchGestureRecognizer *pinch =
    [[UIPinchGestureRecognizer alloc] initWithTarget:self
                                              action:@selector(didPinch:)];
     
    //step b2
    [self.photo addGestureRecognizer:pinch];
    
    
    
    //create pan recgoznier step c1
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(didPan:)];
    //step c2
    [self.photo addGestureRecognizer:pan];

     }


//step c3  - for panning..
-(void)didPan: (UIPanGestureRecognizer *) recognizer
{
   
    if (recognizer.state == UIGestureRecognizerStateBegan) {
        
        NSLog(@"begin center : %@", NSStringFromCGPoint(self.photo.center));
        self.beginningCenter = self.photo.center;
        
    }
    
    CGPoint offset = [recognizer
                      translationInView:self.photo];
    NSLog(@"offset: %@", NSStringFromCGPoint(offset));
    
    self.photo.transform =
    CGAffineTransformMakeTranslation(offset.x, offset.y);
    
    
    if(recognizer.state == UIGestureRecognizerStateEnded) {
        self.photo.transform = CGAffineTransformIdentity;
        
        self.photo.center = CGPointMake(
        
                           self.beginningCenter.x + offset.x ,
                           self.beginningCenter.y + offset.y);
        
        
        
        NSLog(@"end center : %@", NSStringFromCGPoint(self.photo.center));
        
    }
    
        
  
}


//step b3
-(void)didPinch: (UIPinchGestureRecognizer *)recognizer
{
    
    self.photo.transform =
        CGAffineTransformMakeScale(recognizer.scale, recognizer.scale);
    
}



//step 2
//a method .... recognizer sends itself...
-(void)didTap: (UITapGestureRecognizer *) recognizer

{
    //textfield to take focus ..call a method a becomefirstresponder means this field will take the focus, it will take the user input..
    
   [self.nameField becomeFirstResponder]; //do something.
}


  //a3 reac to slide to the left
-(void)didPanLeft: (UISwipeGestureRecognizer *) recognizer
     {
         
       [self.navigationController popViewControllerAnimated:YES]; //create the animation to move
         
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
