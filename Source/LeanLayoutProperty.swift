//
//  LeanLayoutProperty.swift
//  LeanLayoutKit
//
//  Created by Gonzalo Reyes Huertas on 1/6/19.
//  Copyright © 2019 Gonzalo Reyes Huertas. All rights reserved.
//

import UIKit

// Anchor wrapper
public struct LeanLayoutProperty<Anchor: LeanLayoutAnchor> {
    
    private let _anchor: Anchor
    
    init(anchor: Anchor) { _anchor = anchor }
    
}

// MARK: - Helper methods

private extension LeanLayoutProperty {
    
    func equals(_ anchor: Anchor,
                constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = _anchor.constraint(
            equalTo: anchor,
            constant: constant
        )
        constraint.isActive = true
        return constraint
    }
    
    func equals(_ property: LeanLayoutProperty,
                constant: CGFloat = 0) -> NSLayoutConstraint {
        return equals(property._anchor, constant: constant)
    }
    
    func greaterOrEquals(_ anchor: Anchor,
                         constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = _anchor.constraint(
            greaterThanOrEqualTo: anchor,
            constant: constant
        )
        constraint.isActive = true
        return constraint
    }
    
    func greaterOrEquals(_ property: LeanLayoutProperty,
                         constant: CGFloat = 0) -> NSLayoutConstraint {
        return greaterOrEquals(property._anchor, constant: constant)
    }
    
    func lessOrEquals(_ anchor: Anchor,
                      constant: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = anchor.constraint(
            lessThanOrEqualTo: anchor,
            constant: constant
        )
        constraint.isActive = true
        return constraint
    }
    
    func lessOrEquals(_ property: LeanLayoutProperty,
                constant: CGFloat = 0) -> NSLayoutConstraint {
        return lessOrEquals(property._anchor, constant: constant)
    }
    
}

private extension LeanLayoutProperty where Anchor == NSLayoutDimension {
    
    func equals(constant: CGFloat) -> NSLayoutConstraint {
        let constraint = _anchor.constraint(equalToConstant: constant)
        constraint.isActive = true
        return constraint
    }
    
    func greaterOrEquals(constant: CGFloat) -> NSLayoutConstraint {
        let constraint = _anchor.constraint(greaterThanOrEqualToConstant: constant)
        constraint.isActive = true
        return constraint
    }
    
    func lessOrEquals(constant: CGFloat) -> NSLayoutConstraint {
        let constraint = _anchor.constraint(lessThanOrEqualToConstant: constant)
        constraint.isActive = true
        return constraint
    }
    
}

// MARK: - Operator methods

public extension LeanLayoutProperty {
    
    @discardableResult
    static func == (lhs: LeanLayoutProperty,rhs: Anchor) -> NSLayoutConstraint {
        return lhs.equals(rhs)
    }
    
    @discardableResult
    static func == (lhs: LeanLayoutProperty,
                           rhs: (anchor: Anchor, constant: CGFloat)) -> NSLayoutConstraint {
        return lhs.equals(rhs.anchor, constant: rhs.constant)
    }
    
    @discardableResult
    static func >= (lhs: LeanLayoutProperty, rhs: Anchor) -> NSLayoutConstraint {
        return lhs.greaterOrEquals(rhs)
    }
    
    @discardableResult
    static func >= (lhs: LeanLayoutProperty,
                           rhs: (anchor: Anchor, constant: CGFloat)) -> NSLayoutConstraint {
        return lhs.greaterOrEquals(rhs.anchor, constant: rhs.constant)
    }
    
    @discardableResult
    static func <= (lhs: LeanLayoutProperty, rhs: Anchor) -> NSLayoutConstraint {
        return lhs.lessOrEquals(rhs)
    }
    
    @discardableResult
    static func <= (lhs: LeanLayoutProperty,
                           rhs: (anchor: Anchor, constant: CGFloat)) -> NSLayoutConstraint {
        return lhs.lessOrEquals(rhs.anchor, constant: rhs.constant)
    }
    
}

public extension LeanLayoutProperty {
    
    @discardableResult
    static func == (lhs: LeanLayoutProperty, rhs: LeanLayoutProperty) -> NSLayoutConstraint {
        return lhs.equals(rhs._anchor)
    }
    
    @discardableResult
    static func == (lhs: LeanLayoutProperty,
                           rhs: (property: LeanLayoutProperty, constant: CGFloat)) -> NSLayoutConstraint {
        return lhs.equals(rhs.property._anchor, constant: rhs.constant)
    }
    
    @discardableResult
    static func >= (lhs: LeanLayoutProperty, rhs: LeanLayoutProperty) -> NSLayoutConstraint {
        return lhs.greaterOrEquals(rhs._anchor)
    }
    
    @discardableResult
    static func >= (lhs: LeanLayoutProperty,
                           rhs: (property: LeanLayoutProperty, constant: CGFloat)) -> NSLayoutConstraint {
        return lhs.greaterOrEquals(rhs.property._anchor, constant: rhs.constant)
    }
    
    @discardableResult
    static func <= (lhs: LeanLayoutProperty, rhs: LeanLayoutProperty) -> NSLayoutConstraint {
        return lhs.lessOrEquals(rhs._anchor)
    }
    
    @discardableResult
    static func <= (lhs: LeanLayoutProperty,
                           rhs: (property: LeanLayoutProperty, constant: CGFloat)) -> NSLayoutConstraint {
        return lhs.lessOrEquals(rhs.property._anchor, constant: rhs.constant)
    }
    
}

public extension LeanLayoutProperty where Anchor == NSLayoutDimension {
    
    @discardableResult
    static func == (lhs: LeanLayoutProperty, rhs: CGFloat) -> NSLayoutConstraint {
        return lhs.equals(constant: rhs)
    }
    
    @discardableResult
    static func >= (lhs: LeanLayoutProperty, rhs: CGFloat) -> NSLayoutConstraint {
        return lhs.greaterOrEquals(constant: rhs)
    }
    
    @discardableResult
    static func <= (lhs: LeanLayoutProperty, rhs: CGFloat) -> NSLayoutConstraint {
        return lhs.lessOrEquals(constant: rhs)
    }
    
}
