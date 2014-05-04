//
//  PlatformNode.h
//  Kerfuffle Jump
//
//  Created by Robert Marchiori on 4/26/14.
//  Copyright (c) 2014 Robert Marchiori. All rights reserved.
//

#import "GameObjectNode.h"

typedef NS_ENUM(int, PlatformType) {
    PLATFORM_NORMAL,
    PLATFORM_BREAK,
};

@interface PlatformNode : GameObjectNode

@property (nonatomic, assign) PlatformType platformType;

@end
