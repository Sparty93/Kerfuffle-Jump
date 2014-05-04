//
//  GameState.m
//  Kerfuffle Jump
//
//  Created by Robert Marchiori on 4/26/14.
//  Copyright (c) 2014 Robert Marchiori. All rights reserved.
//

#import "GameState.h"

@implementation GameState

+ (instancetype)sharedInstance
{
    static dispatch_once_t pred = 0;
    static GameState *_sharedInstance = nil;
    
    dispatch_once( &pred, ^{
        _sharedInstance = [[super alloc] init];
    });
    return _sharedInstance;
}

- (id) init
{
    if (self = [super init]) {
        // Init
        _score = 0;
        _highScore = 0;
        _highStars = 0;
        _stars = 0;
        
        // Load game state
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        id highScore = [defaults objectForKey:@"highScore"];
        if (highScore) {
            _highScore = [highScore intValue];
        }
        id stars = [defaults objectForKey:@"stars"];
        if (stars) {
            _stars = [stars intValue];
        }
        id highStars = [defaults objectForKey:@"highStars"];
        if (highStars) {
            _highStars = [highStars intValue];
        }
    }
    return self;
}

- (void) saveState
{
    // Update highScore & highStars if the current score is greater
    _highScore = MAX(_score, _highScore);
    _highStars = MAX(_stars, _highStars);
    
    // Store in user defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:_highScore] forKey:@"highScore"];
    [defaults setObject:[NSNumber numberWithInt:_stars] forKey:@"stars"];
    [defaults setObject:[NSNumber numberWithInt:_highStars] forKey:@"highStars"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
