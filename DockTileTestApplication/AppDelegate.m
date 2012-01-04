//
//  AppDelegate.m
//  DockTileTestApplication
//
//  Created by CCoding on 04.01.12.
//  Copyright (c) 2012 CCoding. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize highScore;
@synthesize window = _window;


- (NSInteger)highScore {
    
    return [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScore"];
}

- (void)setHighScore:(NSInteger)newScore {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setInteger:newScore forKey:@"HighScore"];
    
    [defaults synchronize];
    
    [[NSDistributedNotificationCenter defaultCenter] postNotificationName:@"com.ccoding.DockTileTestAppHighScoreChanged" object:nil];
    
    [[[NSApplication sharedApplication] dockTile] setBadgeLabel:[NSString stringWithFormat:@"%ld", (long)newScore]];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self setHighScore:[self highScore] +1];
}

- (void)resetHighScore:(id)sender {
    
    [self setHighScore:0];
}

@end
