//
//  MANConstraintRelationConstraint.h
//  RelativeConstraints
//
//  Created by Mathias Nagler on 13.01.17.
//  Copyright © 2017 Mathias Nagler. All rights reserved.
//

#import "MANRelativeConstraint.h"

@interface MANConstraintRelationConstraint : MANRelativeConstraint

@property (nonatomic, strong, nullable) IBOutlet NSLayoutConstraint *otherConstraint;

@end
