//
//  LeanLayoutAnchor.swift
//  LeanLayoutKit
//
//  Created by Gonzalo Reyes Huertas on 12/29/18.
//  Copyright © 2018 Gonzalo Reyes Huertas. All rights reserved.
//

import UIKit

// Inspired from https://www.swiftbysundell.com/posts/building-dsls-in-swift
public protocol LeanLayoutAnchor {
    
    func constraint(equalTo: Self, constant: CGFloat) -> NSLayoutConstraint
    func constraint(greaterThanOrEqualTo: Self, constant: CGFloat) -> NSLayoutConstraint
    func constraint(lessThanOrEqualTo: Self, constant: CGFloat) -> NSLayoutConstraint
    
}

extension LeanLayoutAnchor {
    
    func equals(anchor: Self, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    func greaterOrEquals(anchor: Self, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    func lessOrEquals(anchor: Self, constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = self.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
}

extension NSLayoutAnchor: LeanLayoutAnchor { }
