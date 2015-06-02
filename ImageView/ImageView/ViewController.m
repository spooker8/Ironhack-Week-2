//
//  ViewController.m
//  ImageView
//
//  Created by Anand Kumar on 5/11/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (strong, nonatomic) IBOutlet UIImageView *imageView; //which shows on the screen
@property (strong, nonatomic) UIImagePickerController *picker;


- (IBAction)ActionSelectPhoto:(id)sender;  //button to select the photo

@end




@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)ActionSelectPhoto:(id)sender{  //function for imagepicker to display to the screen
    
    self.picker = [[UIImagePickerController alloc] init];
    self.picker.delegate = (id)self;
    self.picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:self.picker
                       animated:YES
                     completion:nil];
    
 //action to open the photo gallery using delegate method
    
}


-(void)imagePickerController : (UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage* image = info[UIImagePickerControllerOriginalImage]; //to open the photo gallery
    self.imageView.image = image;  //to choose the image
    [self.picker dismissViewControllerAnimated:YES completion:nil]; //to close the choose photo photogallery
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
