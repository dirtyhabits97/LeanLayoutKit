//
//  NSLayoutOperators+Overloading.swift
//  LeanLayoutKit
//
//  Created by Gonzalo Reyes Huertas on 12/29/18.
//  Copyright © 2018 Gonzalo Reyes Huertas. All rights reserved.
//

import Foundation

// MARK: - Less or equal

@discardableResult
public func <= (lhs: NSLayoutYAxisAnchor, rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
    return lhs.lessOrEquals(anchor: rhs)
}

@discardableResult
public func <= (lhs: NSLayoutXAxisAnchor, rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {
    return lhs.lessOrEquals(anchor: rhs)
}

@discardableResult
public func <= (lhs: NSLayoutDimension, rhs: NSLayoutDimension) -> NSLayoutConstraint {
    return lhs.lessOrEquals(anchor: rhs)
}

@discardableResult
public func <= (lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
    return lhs.lessOrEquals(constant: rhs)
}

// MARK: - Greater or equals

@discardableResult
public func >= (lhs: NSLayoutYAxisAnchor, rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
    return lhs.greaterOrEquals(anchor: rhs)
}

@discardableResult
public func >= (lhs: NSLayoutXAxisAnchor, rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {
    return lhs.greaterOrEquals(anchor: rhs)
}

@discardableResult
public func >= (lhs: NSLayoutDimension, rhs: NSLayoutDimension) -> NSLayoutConstraint {
    return lhs.greaterOrEquals(anchor: rhs)
}

@discardableResult
public func >= (lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
    return lhs.greaterOrEquals(constant: rhs)
}

// MARK: - Equals

@discardableResult
public func --> (lhs: NSLayoutYAxisAnchor, rhs: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
    return lhs.equals(anchor: rhs)
}

@discardableResult
public func --> (lhs: NSLayoutXAxisAnchor, rhs: NSLayoutXAxisAnchor) -> NSLayoutConstraint {
    return lhs.equals(anchor: rhs)
}

@discardableResult
public func --> (lhs: NSLayoutDimension, rhs: NSLayoutDimension) -> NSLayoutConstraint {
    return lhs.equals(anchor: rhs)
}

@discardableResult
public func --> (lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
    return lhs.equals(constant: rhs)
}

// MARK: - Constant

@discardableResult
public func --> (lhs: NSLayoutConstraint, rhs: CGFloat) -> NSLayoutConstraint {
    lhs.constant = rhs
    return lhs
}

// MARK: - Priority

@discardableResult
public func --> (lhs: NSLayoutConstraint, rhs: UILayoutPriority) -> NSLayoutConstraint {
    lhs.priority = rhs
    return lhs
}
