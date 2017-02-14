//
//  GameModel.h
//  TwoPlayerMath
//
//  Created by Sofia Knezevic on 2017-02-13.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

//everything that has to do with the game, generating it and whatnot

@property (nonatomic, strong) Player *player1;
@property (nonatomic, strong) Player *player2;
@property (nonatomic, strong) Player *currentPlayer;

@property (nonatomic, strong) NSMutableString *guess;
@property (nonatomic, assign) int answer;




- (NSString *)generateQuestion;

- (void)checkAnswer:(int)guessAnswer;

- (NSString *)displayScore;

- (BOOL)gameOver;
- (NSString *)gameOverMessage;


@end
