//
//  Card.m
//  Card Match
//
//  Created by Daniel Krueger on 1/25/13.
//  Copyright (c) 2013 Daniel Krueger. All rights reserved.
//

#import "Card.h"
@interface Card()

@end


@implementation Card

- (int) match: (NSArray *) otherCards
{
    int score =0;
    for (Card *card in otherCards)
    {
        if ([card.contents isEqualToString:self.contents])
        {score =1;}
    }
    return score;
}

@end
