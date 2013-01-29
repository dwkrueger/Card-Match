//
//  PlayingCard.m
//  Card Match
//
//  Created by Daniel Krueger on 1/27/13.
//  Copyright (c) 2013 Daniel Krueger. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

// '-' before method means that the messages are sent to the instance of the class.

- (NSString * ) contents
{
 //   NSArray *rankString =
//@[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
    
    return [[PlayingCard rankStrings][self.rank] stringByAppendingString:self.suit];
}
@synthesize suit = _suit; // required because getter and setter are defined.
+ (NSArray*) validSuits
{
    return @[@"♠",@"♣",@"♥",@"♦"] ;
}
- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits]containsObject:suit]){
        _suit = suit;
    }
}
- (NSString *) suit
{
    return _suit ? _suit : @"?"; // ie if suit = nil return ?
}
+ (NSArray *) rankStrings
{ return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}
+ (NSUInteger) maxRank { return [self rankStrings].count -1;}
- (void) setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank] ){_rank = rank;}
}
@end
