//
//  Deck.h
//  Card Match
//
//  Created by Daniel Krueger on 1/25/13.
//  Copyright (c) 2013 Daniel Krueger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
- (void) addCard:(Card *)card atTop:(BOOL)atTop;
- (Card *) drawRandomCard;
@end
