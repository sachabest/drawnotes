//
//  sbColorPicker.m
//  drawnotes
//
//  Created by Sacha Best on 10/18/13.
//  Copyright (c) 2013 Sacha Best. All rights reserved.
//

#import "sbColorPicker.h"

@implementation sbColorPicker
@synthesize colors;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor grayColor];
    }
    return self;
}
- (void)createColorArray {
    [colors initWithObjects: [UIColor redColor], [UIColor blueColor], [UIColor greenColor]];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
