//
//  MANSizeRelationConstraint.m
//  RelativeConstraints
//
//  Created by Mathias Nagler on 13.01.17.
//  Copyright © 2017 Mathias Nagler. All rights reserved.
//

#import "MANSizeRelationConstraint.h"
#import "MANRelativeConstraint+Internal.h"

@implementation MANSizeRelationConstraint

- (void)setDefaults
{
    [super setDefaults];
    _relateToHorizontalDimension = YES;
}

- (void)setSizeRelationView:(nullable UIView *)sizeRelationView
{
    _sizeRelationView = sizeRelationView;
    [self setNeedsConstantUpdate];
}

- (void)setRelateToHorizontalDimension:(BOOL)relateToHorizontalDimension
{
    _relateToHorizontalDimension = relateToHorizontalDimension;
    [self setNeedsConstantUpdate];
}

- (CGFloat)updatedConstant
{
    return self.relateToHorizontalDimension ? CGRectGetWidth(self.sizeRelationView.bounds) : CGRectGetHeight(self.sizeRelationView.bounds);
}

@end
