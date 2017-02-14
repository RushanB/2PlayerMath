//
//  ViewController.m
//  TwoPlayerMath
//
//  Created by Sofia Knezevic on 2017-02-13.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
#import "GameModel.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *playerQuestion;
@property (weak, nonatomic) IBOutlet UILabel *player1Score;
@property (weak, nonatomic) IBOutlet UILabel *player2Score;

@property (nonatomic, strong) GameModel *gameModel;
@property (weak, nonatomic) IBOutlet UITextField *answerField;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.gameModel = [[GameModel alloc] init];
    self.playerQuestion.text = [self.gameModel generateQuestion];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressNumber:(id)sender
{
    NSString *guessingString = [self.answerField.text stringByAppendingString:[sender currentTitle]];
    
    [self.answerField setText:guessingString];
    
    [self.gameModel checkAnswer:[guessingString intValue]];
    

    
}

- (IBAction)pressEnter:(id)sender {
    
    [self.answerField setText:nil];
    
    
    //checking if game is over, sending an alert to restart the game
    if (self.gameModel.gameOver) {
        
        self.playerQuestion.text = [self.gameModel gameOverMessage];
        
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"GAME OVER!"
                                                                       message:@"Would you like to play again?"
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
        
        ViewController *newGame = [[ViewController alloc] init];
        [newGame viewDidLoad];
        
        
    }else if (self.gameModel.currentPlayer == self.gameModel.player1) {
        
        self.player1Score.text = [self.gameModel displayScore];
        
        self.gameModel.currentPlayer = self.gameModel.player2;
        
        self.playerQuestion.text = [self.gameModel generateQuestion];
        
    }else{
        
        self.player2Score.text = [self.gameModel displayScore];
        
        self.gameModel.currentPlayer = self.gameModel.player1;
        
        self.playerQuestion.text = [self.gameModel generateQuestion];
        
    }
    
}

@end
