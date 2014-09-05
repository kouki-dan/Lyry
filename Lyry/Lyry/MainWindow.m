//
//  MainWindow.m
//  Lyry
//
//  Created by Kouki Saito on 2014/09/06.
//  Copyright (c) 2014年 Kouki. All rights reserved.
//

#import "MainWindow.h"


@interface MainWindow ()

@property NSPoint prevPoint;
@property BOOL min;
@property BOOL moved;
@end


@implementation MainWindow

- (void)mouseDown:(NSEvent *)theEvent{
    self.moved = NO;
}

- (void)mouseUp:(NSEvent *)theEvent{
    if(self.moved){
        self.moved = NO;
        return;
    }

    int height;
    int y;
    if(self.min){
        height = 600;
        y = 30 - 600;
    }
    else{
        height = 30;
        y = 600 - 30;
    }
    NSRect frame = [self frame];
    frame.size.height = height;
    frame.origin.y += y;
    [self setFrame:frame display:YES animate:NO];

    self.min = !self.min;
}

- (void)mouseDragged:(NSEvent *)theEvent{
    self.moved = YES;
    NSRect frame = [self frame];
    frame.origin.x += theEvent.deltaX;
    frame.origin.y -= theEvent.deltaY;
    [self setFrame:frame display:YES animate:NO];
}

- (BOOL) acceptsFirstResponder {
    return YES;
}

@end
