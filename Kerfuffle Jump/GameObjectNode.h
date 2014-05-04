//
//  GameObjectNode.h
//  Kerfuffle Jump
//
//  Created by Robert Marchiori on 4/26/14.
//  Copyright (c) 2014 Robert Marchiori. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface GameObjectNode : SKNode

// Called when a player physics body collides with the game object's physics body
- (BOOL) collisionWithPlayer:(SKNode *)player;

// Called every frame to see if the game object should be removed from the scene
- (void) checkNodeRemoval:(CGFloat)playerY;

@end
