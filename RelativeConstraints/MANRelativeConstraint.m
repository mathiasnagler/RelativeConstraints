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
                                                [self setNeedsConstantUpdate];
                                            }
                                                 error:nil];
}

- (void)setRelationMultiplier:(CGFloat)relationMultiplier
{
    _relationMultiplier = relationMultiplier;
    [self setNeedsConstantUpdate];
}

- (void)setAdditionalConstant:(CGFloat)additionalConstant
{
    _additionalConstant = additionalConstant;
    [self setNeedsConstantUpdate];
}

- (void)setNeedsConstantUpdate
{
    self.constant = ([self updatedConstant] * self.relationMultiplier) + self.additionalConstant;
}

- (CGFloat)updatedConstant
{
    NSAssert(NO, @"updateConstant needs to be implemented by subclasses.");
    return 0;
}

@end
