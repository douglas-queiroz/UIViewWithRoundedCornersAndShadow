//
//  UIView+RoundedCorner+Shadow.m
//  UIViewWithRoundedCornersAndShadow
//
//  Created by Douglas Queiroz on 08/08/17.
//  Copyright © 2017 Douglas Queiroz. All rights reserved.
//

#import "UIView+RoundedCorner+Shadow.h"

@implementation UIView_RoundedCorner_Shadow

- (void)drawRect:(CGRect)rect {
    self.clipsToBounds = YES;
    self.layer.cornerRadius = _cornerRadius;
    
    UIView *shadowView = [[UIView alloc] initWithFrame:rect];
    shadowView.backgroundColor = [UIColor clearColor];
    shadowView.layer.shadowColor = [[UIColor blackColor] CGColor];
    shadowView.layer.shadowOffset = CGSizeMake(_widthShadow, _heithShadow);
    shadowView.layer.shadowOpacity = 0.4;
    shadowView.layer.shadowRadius = 2.0;
    
    shadowView.layer.shadowPath = [[UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:_cornerRadius] CGPath];
    shadowView.layer.shouldRasterize = YES;
    shadowView.layer.rasterizationScale = UIScreen.mainScreen.scale;
    
    [self.superview insertSubview:shadowView belowSubview:self];
}

@end
