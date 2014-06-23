//
//  SuperCardViewController.m
//  SuperCard
//
//  Created by Hung Yu-Ting on 2014/6/23.
//  Copyright (c) 2014年 yt.hung. All rights reserved.
//

#import "SuperCardViewController.h"
#import "PlayingCardView.h"

@interface SuperCardViewController ()

@property (weak, nonatomic) IBOutlet PlayingCardView *playingCardView;
@end

@implementation SuperCardViewController

// swipe handler in controller
- (IBAction)swipe:(UISwipeGestureRecognizer *)sender {
    self.playingCardView.faceUp = !self.playingCardView.faceUp;

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.playingCardView.rank = 13;
    self.playingCardView.suit = @"♥";
    
    // setup gesture and handler in view
    [self.playingCardView addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.playingCardView action:@selector(pinch:)]];
}

@end
