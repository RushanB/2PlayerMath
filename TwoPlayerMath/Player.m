//
//  Player.m
//  TwoPlayerMath
//
//  Created by Sofia Knezevic on 2017-02-13.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _lives = 3;
        _name = name;
    }
    return self;
}

//- (void)loseALife
//{
//    self.lives--;
//    
//}


@end
