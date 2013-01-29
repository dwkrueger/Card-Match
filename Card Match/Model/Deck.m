//
//  Deck.m
//  Card Match
//
//  Created by Daniel Krueger on 1/25/13.
//  Copyright (c) 2013 Daniel Krueger. All rights reserved.
//

#import "Deck.h"
@interface Deck()
//Area for private properties of the class
@property (strong, nonatomic) NSMutableArray * cards;
@end

@implementation Deck
- (NSMutableArray *) cards // the getter
{
    if(!_cards) _cards = [[NSMutableArray alloc] init]; // in Objective-C alloc and initiallization are separate. Here The method call is actually to NSMutableArray
    return _cards;
}
//Area for private implementation of the class
- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
  
    if (atTop){
        [self.cards insertObject:card atIndex:0]; //getter of cards called
    }
    else{
        [self.cards addObject:card];
    }
    
    
}
- (Card *) drawRandomCard
{
    Card *randomCard = nil;
    if(self.cards.count){
        
        unsigned index = arc4random() % self.cards.count;
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];        
    }
    return randomCard;
}

@end
