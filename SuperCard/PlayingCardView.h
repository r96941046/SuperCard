//
//  PlayingCardView.h
//  SuperCard
//
//  Created by Hung Yu-Ting on 2014/6/23.
//  Copyright (c) 2014年 yt.hung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSUInteger rank;
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) BOOL faceUp;

- (void)pinch:(UIPinchGestureRecognizer *)gesture;
@end
