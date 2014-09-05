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

@end


@implementation MainWindow

- (void)mouseDown:(NSEvent *)theEvent{
     
}

- (void)mouseDragged:(NSEvent *)theEvent{
    NSRect frame = [self frame];
    frame.origin.x += theEvent.deltaX;
    frame.origin.y -= theEvent.deltaY;
    [self setFrame:frame display:YES animate:NO];
}

- (BOOL) acceptsFirstMouse {
    return YES;
}

@end
