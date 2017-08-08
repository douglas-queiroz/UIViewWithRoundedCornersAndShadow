//
//  UIView+RoundedCorner+Shadow.h
//  UIViewWithRoundedCornersAndShadow
//
//  Created by Douglas Queiroz on 08/08/17.
//  Copyright © 2017 Douglas Queiroz. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface UIView_RoundedCorner_Shadow : UIView

@property (nonatomic) IBInspectable CGFloat widthShadow;
@property (nonatomic) IBInspectable CGFloat heithShadow;
@property (nonatomic) IBInspectable CGFloat cornerRadius;

@end
