//
//  NSLayoutDimension+Extensions.swift
//  LeanLayoutKit
//
//  Created by Gonzalo Reyes Huertas on 12/29/18.
//  Copyright © 2018 Gonzalo Reyes Huertas. All rights reserved.
//

import UIKit

extension NSLayoutDimension {
    
    func equals(dimension: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(equalTo: dimension, multiplier: multiplier, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    func equals(constant: CGFloat) -> NSLayoutConstraint {
        let constraint = self.constraint(equalToConstant: constant)
        constraint.isActive = true
        return constraint
    }
    
    func greaterOrEquals(dimension: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(greaterThanOrEqualTo: dimension, multiplier: multiplier, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    func greaterOrEquals(constant: CGFloat) -> NSLayoutConstraint {
        let constraint = self.constraint(greaterThanOrEqualToConstant: constant)
        constraint.isActive = true
        return constraint
    }
    
    func lessOrEquals(dimension: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(lessThanOrEqualTo: dimension, multiplier: multiplier, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    func lessOrEquals(constant: CGFloat) -> NSLayoutConstraint {
        let constraint = self.constraint(lessThanOrEqualToConstant: constant)
        constraint.isActive = true
        return constraint
    }
    
}
