//
//  sbColorPicker.h
//  drawnotes
//
//  Created by Sacha Best on 10/18/13.
//  Copyright (c) 2013 Sacha Best. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface sbColorPicker : UIView
@property (strong, readonly) NSArray *colors;

-(void)createColorArray;
@end
