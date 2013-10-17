//
//  sbFirstViewController.m
//  drawnotes
//
//  Created by Sacha Best on 10/12/13.
//  Copyright (c) 2013 Sacha Best. All rights reserved.
//

#import "sbFirstViewController.h"

@interface sbFirstViewController ()

@end

@implementation sbFirstViewController

- (void)handleViewsSwipe:(UISwipeGestureRecognizer *)recognizer {
    NSUInteger touches = recognizer.numberOfTouches;
    switch (touches) {
        case 1:
            break;
        case 2:
            break;
        case 3:
            break;
        default:
            break;
    }
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    drawScreen = [[MyLineDrawingView alloc]initWithFrame:CGRectMake(0, 45, 768, 1004)];
    [drawScreen setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:drawScreen];
    
    
    UIButton *undoButton=[UIButton  buttonWithType:UIButtonTypeCustom];
    [undoButton setTitle:@"UNDO" forState:UIControlStateNormal];
    [undoButton setBackgroundColor:[UIColor blackColor]];
    undoButton.frame=CGRectMake(0, 0, 100, 40);
    [undoButton addTarget:self action:@selector(undoButtonClicked:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:undoButton];
    
    
    UIButton *redoButton=[UIButton  buttonWithType:UIButtonTypeCustom];
    [redoButton setTitle:@"REDO" forState:UIControlStateNormal];
    [redoButton setBackgroundColor:[UIColor blackColor]];
    redoButton.frame=CGRectMake(120, 0, 100, 40);
    [redoButton addTarget:self action:@selector(redoButtonClicked:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:redoButton];
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
}

-(IBAction)undoButtonClicked:(id)sender
{
    [drawScreen undoButtonClicked];
    
}

-(IBAction)redoButtonClicked:(id)sender
{
    [drawScreen redoButtonClicked];
    
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}






@end