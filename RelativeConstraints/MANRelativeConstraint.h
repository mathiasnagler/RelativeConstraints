//
//  MANRelativeConstraint.h
//  RelativeConstraints
//
//  Created by Mathias Nagler on 12.01.17.
//  Copyright © 2017 Mathias Nagler. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MANRelativeConstraint : NSLayoutConstraint

@property (nonatomic, strong, nullable) IBOutlet UIView *parentView;
@property (nonatomic, assign) IBInspectable CGFloat relationMultiplier;
@property (nonatomic, assign) IBInspectable CGFloat additionalConstant;

- (void)setNeedsConstantUpdate;
- (CGFloat)updatedConstant;

@end

NS_ASSUME_NONNULL_END
