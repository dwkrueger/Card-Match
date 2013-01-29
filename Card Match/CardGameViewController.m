//
//  CardGameViewController.m
//  Card Match
//
//  Created by Daniel Krueger on 1/25/13.
//  Copyright (c) 2013 Daniel Krueger. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@end

@implementation CardGameViewController

- (void) setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender {
    //IBAction is really just a void
    // Argument is sender of type (UIButtion *)
   /* if (sender.isSelected){
        sender.selected = NO;
    } else {
        sender.selected = YES;
    }
    */
    sender.selected = !sender.isSelected;
    self.flipCount++;
   
}

@end
