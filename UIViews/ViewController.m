//
//  ViewController.m
//  UIViews
//
//  Created by Dishant Kapadiya on 8/10/16.
//  Copyright © 2016 Dishant Kapadiya. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardView.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet PlayingCardView *playingCardView;
@property (nonatomic, strong) PlayingCardDeck *deck;
@end

@implementation ViewController

-(Deck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

-(void) drawRandomCard
{
    Card *card = [self.deck drawRandomCard];
    if([card isKindOfClass:[PlayingCard class]]){
        PlayingCard *pcard = (PlayingCard *)card;
        self.playingCardView.suit = pcard.suit;
        self.playingCardView.rank = pcard.rank;
    }
}

- (IBAction)swipedCardView:(UISwipeGestureRecognizer *)sender {
    if(!self.playingCardView.faceUp) [self drawRandomCard];
    self.playingCardView.faceUp = !self.playingCardView.faceUp;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.playingCardView addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.playingCardView action:@selector(pinch:)]];
    [self.playingCardView addGestureRecognizer:[[UIRotationGestureRecognizer alloc] initWithTarget:self.playingCardView action:@selector(rotate:)]];
}



@end
