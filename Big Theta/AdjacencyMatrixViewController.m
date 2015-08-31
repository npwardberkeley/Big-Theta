//
//  AdjacencyMatrixViewController.m
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 4/17/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import "AdjacencyMatrixViewController.h"

@implementation AdjacencyMatrixViewController

@synthesize description;
@synthesize addVertexImage;
@synthesize addEdgeImage;
@synthesize queryImage;
@synthesize removeVertexImage;
@synthesize removeEdgeImage;
@synthesize spaceImage;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    addVertexImage.image = [UIImage imageNamed:@"O_V^2.jpg"];
    
    addEdgeImage.image = [UIImage imageNamed:@"O_1.jpg"];
    
    queryImage.image = [UIImage imageNamed:@"O_1.jpg"];
    
    removeVertexImage.image = [UIImage imageNamed:@"O_V^2.jpg"];
    
    removeEdgeImage.image = [UIImage imageNamed:@"O_1.jpg"];
    
    spaceImage.image = [UIImage imageNamed:@"O_V^2.jpg"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) overallDescription:(UIButton *)sender {
    if (description.hidden) {
        [description setAlpha:0.0f];
        description.hidden = NO;
        
        [UIView animateWithDuration:1.0f animations:^{
            [description setAlpha:1.0f];
        }];
    } else {
        [UIView animateWithDuration:1.0f animations:^{
            [description setAlpha:0.0f];
        } completion:^(BOOL finished){
            description.hidden = YES;
        }];
    }
}

@end
