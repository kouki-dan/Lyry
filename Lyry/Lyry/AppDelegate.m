//
//  AppDelegate.m
//  Lyry
//
//  Created by Kouki Saito on 2014/09/06.
//  Copyright (c) 2014年 Kouki. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@end

@implementation AppDelegate
            
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [self.window setLevel:NSFloatingWindowLevel];
    
    [self.window setOpaque:NO];
    
    self.window.backgroundColor = [NSColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4];
    
    NSRect frame = [self.window frame];
    frame.size.height = 600;
    frame.size.width = 300;
    [self.window setFrame:frame display:YES animate:NO];
    
    [self.window setStyleMask:NSBorderlessWindowMask | NSResizableWindowMask];
    
    


}



- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
