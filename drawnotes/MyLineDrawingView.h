//
//  MyLineDrawingView.h
//  drawnotes
//
//  Created by Sacha Best on 10/17/11.
//  Copyright 2013 Sacha Best. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MyLineDrawingView : UIView {
 
    NSMutableArray *pathArray;
    NSMutableArray *bufferArray;
    UIBezierPath *myPath;

}
@property(nonatomic,assign) NSInteger undoSteps;

-(void)undoButtonClicked;
-(void)redoButtonClicked;
@end
