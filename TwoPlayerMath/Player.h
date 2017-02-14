//
//  Player.h
//  TwoPlayerMath
//
//  Created by Sofia Knezevic on 2017-02-13.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

//everything that has to do with the players

@property (nonatomic, assign) int lives;
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithName:(NSString *)name;

- (int) loseALife;

@end
