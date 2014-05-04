//
//  PlatformNode.m
//  Kerfuffle Jump
//
//  Created by Robert Marchiori on 4/26/14.
//  Copyright (c) 2014 Robert Marchiori. All rights reserved.
//

#import "PlatformNode.h"

@import AVFoundation;

@interface PlatformNode ()
{
    SKAction *_platformSound;
}
@end

@implementation PlatformNode


- (id) init
{
    if (self = [super init]) {
        // Sound for when a star is collected
        _platformSound = [SKAction playSoundFileNamed:@"funny-bounce.mp3" waitForCompletion:NO];
    }
    
    return self;
}


- (BOOL) collisionWithPlayer:(SKNode *)player
{
    // 1
    // Only bounce the player if he's falling
    if (player.physicsBody.velocity.dy < 0) {
        // 2
        player.physicsBody.velocity = CGVectorMake(player.physicsBody.velocity.dx, 250.0f);
        
        // Play sound
        [self.parent runAction:_platformSound];
        
        // 3
        // Remove if it is a Break type platform
        if (_platformType == PLATFORM_BREAK) {
            [self removeFromParent];
        }
    }
    
    // 4
    // No stars for platforms
    return NO;
}

@end
