//
//  PlayingCard.h
//  Card Match
//
//  Created by Daniel Krueger on 1/27/13.
//  Copyright (c) 2013 Daniel Krueger. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic) NSString * suit;
@property (nonatomic) NSUInteger rank;
+(NSArray *) validSuits;
+(NSUInteger) maxRank;

@end
