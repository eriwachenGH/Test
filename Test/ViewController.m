//
//  ViewController.m
//  Test
//
//  Created by chenliangjie on 14-6-14.
//  Copyright (c) 2014年 TEST. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    if(ISIPHONE5)
        homeImageView.image = [UIImage imageNamed:@"Home_bg_1136"];
    else
        homeImageView.image = [UIImage imageNamed:@"Home_bg_960"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
}

#pragma mark ---
- (IBAction)button1Action:(id)sender
{
}

@end
