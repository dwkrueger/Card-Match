//
//  PlayingCardDeck.m
//  Card Match
//
//  Created by Daniel Krueger on 1/27/13.
//  Copyright (c) 2013 Daniel Krueger. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck
// NSObjet Description could be overridden to show self contents

- (id) init
{
    self = [super init]; // calls super classes init.
    
    if (self) { // in theory the 'super' class call could return 'nil'
        for (NSString *suit in [PlayingCard validSuits])
        {
            for (NSUInteger rank =1; rank <= [PlayingCard maxRank]; rank++){
                PlayingCard *card = [[PlayingCard alloc] init];
                
                card.rank = rank;
                card.suit = suit;
            }
        }
        
        
    }
    return self;
}

@end
