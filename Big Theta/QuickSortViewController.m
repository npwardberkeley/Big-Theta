//
//  QuickSortViewController.m
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 5/6/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import "QuickSortViewController.h"

@implementation QuickSortViewController

@synthesize description;
@synthesize bestCaseImage;
@synthesize averageCaseImage;
@synthesize worstCaseImage;
@synthesize spaceImage;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    bestCaseImage.image = [UIImage imageNamed:@"O_n_log_n.jpg"];
    
    averageCaseImage.image = [UIImage imageNamed:@"O_n_log_n.jpg"];
    
    worstCaseImage.image = [UIImage imageNamed:@"O_n^2.jpg"];
    
    spaceImage.image = [UIImage imageNamed:@"O_log_n.jpg"];
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
