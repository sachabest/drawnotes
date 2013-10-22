//
//  sbFirstViewController.m
//  drawnotes
//
//  Created by Sacha Best on 10/12/13.
//  Copyright (c) 2013 Sacha Best. All rights reserved.
//

#import "sbFirstViewController.h"
#import "sbColorPicker.h"

@interface sbFirstViewController ()
@property (weak, nonatomic) IBOutlet UIButton *undoButton;
@property (weak, nonatomic) IBOutlet UIButton *redoButton;
@property (strong, nonatomic) IBOutlet sbColorPicker *colorPicker;
- (UIColor *)activateColorPicker;
- (void)activateSettingsMenu;
@end

@implementation sbFirstViewController

- (UIColor *)activateColorPicker {
    
    return nil;
}
- (void)activateSettingsMenu {
    [_colorPicker setHidden:FALSE];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}
- (void)handleSwipeUpFrom:(UIGestureRecognizer*)recognizer {
    NSLog(@"Detected swipe up");
    NSUInteger touches = recognizer.numberOfTouches;
    switch (touches) {
        case 2: //handle two finger swipe case
            if (_colorPicker.hidden)
                [self activateSettingsMenu];
            else
                [_colorPicker setHidden:TRUE];
        default:
            return;
    }
}
- (void)handleSwipeDownFrom:(UIGestureRecognizer*)recognizer {
    NSUInteger touches = recognizer.numberOfTouches;
    NSLog(@"Detected swipe down");
    switch (touches) {
        case 2: //handle two finger swipe case
            [self activateColorPicker];
        default:
            return;
    }
}
- (void)viewDidLoad
{
    UISwipeGestureRecognizer* swipeUpGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeUpFrom:)];
    UISwipeGestureRecognizer* swipeDownGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeDownFrom:)];
    swipeUpGestureRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
    swipeDownGestureRecognizer.direction = UISwipeGestureRecognizerDirectionDown;
    [self.view addGestureRecognizer:swipeDownGestureRecognizer];
    [self.view addGestureRecognizer:swipeUpGestureRecognizer];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    drawScreen = [[MyLineDrawingView alloc]initWithFrame:CGRectMake(0, 20, 768, 1004)];
    [drawScreen setBackgroundColor:[UIColor whiteColor]];
    [drawScreen setUserInteractionEnabled:TRUE];
    [self.view addSubview:drawScreen];
    
    _colorPicker = [[sbColorPicker alloc]initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width, 80)];
    [_colorPicker setUserInteractionEnabled:TRUE];
    [_colorPicker setHidden:TRUE];
    [self.view addSubview:_colorPicker];
    
    [_undoButton setTitle:@"UNDO" forState:UIControlStateNormal];
    [_undoButton addTarget:self action:@selector(undoButtonClicked:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_undoButton];
    
    [_redoButton setTitle:@"REDO" forState:UIControlStateNormal];
    [_redoButton addTarget:self action:@selector(redoButtonClicked:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_redoButton];
    
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