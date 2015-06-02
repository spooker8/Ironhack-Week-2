//
//  DetailViewController.m
//  TrafficLightVersion2
//
//  Created by Anand Kumar on 5/11/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "DetailViewController.h"
#import "TrafficLightModel.h"


@interface DetailViewController ()

@property (strong, nonatomic) IBOutlet UIView *lightBox;
@property (strong, nonatomic) TrafficLightModel* model;   //class call where the model is
@property (assign, nonatomic) int trafficlightIndex;
@property (strong, nonatomic) NSArray* lightColor;




@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
