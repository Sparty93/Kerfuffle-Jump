//
//  StarNode.h
//  Kerfuffle Jump
//
//  Created by Robert Marchiori on 4/26/14.
//  Copyright (c) 2014 Robert Marchiori. All rights reserved.
//

#import "GameObjectNode.h"

@interface StarNode : GameObjectNode

typedef NS_ENUM(int, StarType) {
    STAR_NORMAL,
    STAR_SPECIAL,
};

@property (nonatomic, assign) StarType starType;

@end
