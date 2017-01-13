//
//  MANConstraintRelationConstraint.h
//  RelativeConstraints
//
//  Created by Mathias Nagler on 13.01.17.
//  Copyright © 2017 Mathias Nagler. All rights reserved.
//

#import <RelativeConstraints/RelativeConstraints.h>

@interface MANConstraintRelationConstraint : MANRelativeConstraint

@property (nonatomic, strong, nullable) IBOutlet NSLayoutConstraint *otherConstraint;

@end
