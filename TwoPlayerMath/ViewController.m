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


- (IBAction)press1:(id)sender {
}

- (IBAction)press2:(id)sender {
}

- (IBAction)press3:(id)sender {
}

- (IBAction)press4:(id)sender {
}

- (IBAction)press5:(id)sender {
}

- (IBAction)press6:(id)sender {
}

- (IBAction)press7:(id)sender {
}

- (IBAction)press8:(id)sender {
}

- (IBAction)press9:(id)sender {
}

- (IBAction)press0:(id)sender {
}

- (IBAction)pressEnter:(id)sender {
}

@end
