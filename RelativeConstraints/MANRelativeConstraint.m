//
//  MANRelativeConstraint.m
//  RelativeConstraints
//
//  Created by Mathias Nagler on 12.01.17.
//  Copyright © 2017 Mathias Nagler. All rights reserved.
//

#import "MANRelativeConstraint.h"
#import <Aspects/Aspects.h>

@interface MANRelativeConstraint ()

@property (nonatomic, strong) id<AspectToken> aspectToken;

@end

@implementation MANRelativeConstraint

- (instancetype)init
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    _relationMultiplier = 1.f;
    
    return self;
}

- (void)setOtherConstraint:(nullable NSLayoutConstraint *)otherConstraint
{
    _otherConstraint = otherConstraint;
    [self updateConstant];
}

- (void)setParentView:(nullable UIView *)parentView
{
    if (self.aspectToken) {
        [self.aspectToken remove];
        self.aspectToken = nil;
    }
    
    _parentView = parentView;
    
    self.aspectToken = [parentView aspect_hookSelector:@selector(layoutSubviews)
                                           withOptions:AspectPositionAfter
                                            usingBlock:^(){
                                                [self updateConstant];
                                            }
                                                 error:nil];
}

- (void)setRelationMultiplier:(CGFloat)relationMultiplier
{
    _relationMultiplier = relationMultiplier;
    [self updateConstant];
}

#pragma mark - Private

- (void)updateConstant
{
    if (!self.otherConstraint) {
        return;
    }
    
    self.constant = self.otherConstraint.constant * self.relationMultiplier;
}

@end
