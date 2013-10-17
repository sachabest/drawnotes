//
//  sbFirstViewController.m
//  drawnotes
//
//  Created by Sacha Best on 10/12/13.
//  Copyright (c) 2013 Sacha Best. All rights reserved.
//

#import "sbFirstViewController.h"
#import "MyLineDrawingView.h"

@interface sbFirstViewController ()

@end

@implementation sbFirstViewController

- (void)viewDidLoad
{
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    MyLineDrawingView *drawScreen=[[MyLineDrawingView alloc]initWithFrame:CGRectMake(0, 45, 768, 1004)];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
