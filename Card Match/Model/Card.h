//
//  Card.h
//  Card Match
//
//  Created by Daniel Krueger on 1/25/13.
//  Copyright (c) 2013 Daniel Krueger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isFaceUp) BOOL faceUp;
@property (nonatomic, getter=isUnplayable) BOOL unplayable;
-(int) match:(NSArray *) otherCards;



@end
