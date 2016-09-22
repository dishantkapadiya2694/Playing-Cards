//
//  PlayingCardView.h
//  UIViews
//
//  Created by Dishant Kapadiya on 8/10/16.
//  Copyright © 2016 Dishant Kapadiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSUInteger rank;
@property (nonatomic, strong) NSString *suit;
@property(nonatomic) BOOL faceUp;

- (void)pinch:(UIPinchGestureRecognizer *)gesture;
- (void)rotate:(UIRotationGestureRecognizer *)gesture;

@end
