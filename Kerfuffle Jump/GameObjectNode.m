//
//  GameObjectNode.m
//  Kerfuffle Jump
//
//  Created by Robert Marchiori on 4/26/14.
//  Copyright (c) 2014 Robert Marchiori. All rights reserved.
//

#import "GameObjectNode.h"

@implementation GameObjectNode

- (BOOL) collisionWithPlayer:(SKNode *)player
{
    return NO;
}

- (void) checkNodeRemoval:(CGFloat)playerY
{
    if (playerY > self.position.y + 200.0f) {
        [self removeFromParent];
    }
}

@end
