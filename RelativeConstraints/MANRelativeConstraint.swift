//
//  MANRelativeConstraint.swift
//  RelativeConstraints
//
//  Created by Mathias Nagler on 13.02.17.
//  Copyright © 2017 Mathias Nagler. All rights reserved.
//

import UIKit

extension RelativeConstraint {

    public var minimumConstant: CGFloat? {
        get {
            let constant = __minimumConstant
            return constant.isNaN ? nil : constant
        }
        set {
            if let constant = newValue {
                __minimumConstant = constant
                return
            }
            __minimumConstant = CGFloat.nan
        }
    }
    
    public var maximumConstant: CGFloat? {
        get {
            let constant = __maximumConstant
            return constant.isNaN ? nil : constant
        }
        set {
            if let constant = newValue {
                __maximumConstant = constant
                return
            }
            __maximumConstant = CGFloat.nan
        }
    }
}
