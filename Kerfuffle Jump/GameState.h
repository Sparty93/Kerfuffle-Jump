//
//  GameState.h
//  Kerfuffle Jump
//
//  Created by Robert Marchiori on 4/26/14.
//  Copyright (c) 2014 Robert Marchiori. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameState : NSObject

@property (nonatomic, assign) int score;
@property (nonatomic, assign) int highScore;
@property (nonatomic, assign) int highStars;
@property (nonatomic, assign) int stars;

+ (instancetype)sharedInstance;

- (void) saveState;

@end
