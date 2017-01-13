//
//  MANConstraintRelationConstraint.m
//  RelativeConstraints
//
//  Created by Mathias Nagler on 13.01.17.
//  Copyright © 2017 Mathias Nagler. All rights reserved.
//

#import "MANConstraintRelationConstraint.h"

@implementation MANConstraintRelationConstraint

- (void)setOtherConstraint:(nullable NSLayoutConstraint *)otherConstraint
{
    _otherConstraint = otherConstraint;
    [self setNeedsConstantUpdate];
}

- (CGFloat)updatedConstant
{
    if (!self.otherConstraint) {
        return self.constant;
    }
    
    return self.otherConstraint.constant * self.relationMultiplier;
}

@end
