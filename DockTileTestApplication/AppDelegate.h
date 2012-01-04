//
//  AppDelegate.h
//  DockTileTestApplication
//
//  Created by CCoding on 04.01.12.
//  Copyright (c) 2012 CCoding. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property NSInteger highScore;

- (IBAction)resetHighScore:(id)sender;

@end
