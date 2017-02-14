//
//  GameModel.m
//  TwoPlayerMath
//
//  Created by Sofia Knezevic on 2017-02-13.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _player1 = [[Player alloc] initWithName:@"Player 1"];
        _player2 = [[Player alloc] initWithName:@"Player 2"];
        _currentPlayer = _player1;

        
        
    }
    return self;
}

-(NSString *)generateQuestion
{
    int x = arc4random_uniform(20)+1;
    int y = arc4random_uniform(20)+1;
    
    NSString *question = [NSString stringWithFormat:@"%@, what is %i + %i?", self.currentPlayer.name, x, y];
    
    return question;
    
}

@end
