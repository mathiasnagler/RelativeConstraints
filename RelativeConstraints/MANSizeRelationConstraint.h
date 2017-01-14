//
//  MANSizeRelationConstraint.h
//  RelativeConstraints
//
//  Created by Mathias Nagler on 13.01.17.
//  Copyright © 2017 Mathias Nagler. All rights reserved.
//

#import "MANRelativeConstraint.h"

@interface MANSizeRelationConstraint : MANRelativeConstraint

@property (nonatomic, strong) IBOutlet UIView *sizeRelationView;
@property (nonatomic, assign) IBInspectable BOOL relateToHorizontalDimension;

@end
