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
public func <= <Anchor: LeanLayoutAnchor> (lhs: Anchor, rhs: (Anchor, CGFloat)) -> NSLayoutConstraint {
    return lhs.lessOrEquals(anchor: rhs.0, constant: rhs.1)
}

@discardableResult
public func <= <Anchor: LeanLayoutAnchor> (lhs: Anchor, rhs: Anchor) -> NSLayoutConstraint {
    return lhs.lessOrEquals(anchor: rhs)
}

@discardableResult
public func <= (lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
    return lhs.lessOrEquals(constant: rhs)
}

// MARK: - Greater or equals

@discardableResult
public func >= <Anchor: LeanLayoutAnchor> (lhs: Anchor, rhs: (Anchor, CGFloat)) -> NSLayoutConstraint {
    return lhs.greaterOrEquals(anchor: rhs.0, constant: rhs.1)
}

@discardableResult
public func >= <Anchor: LeanLayoutAnchor> (lhs: Anchor, rhs: Anchor) -> NSLayoutConstraint {
    return lhs.greaterOrEquals(anchor: rhs)
}

@discardableResult
public func >= (lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
    return lhs.greaterOrEquals(constant: rhs)
}

// MARK: - Equals

@discardableResult
public func ~= <Anchor: LeanLayoutAnchor> (lhs: Anchor, rhs: (Anchor, CGFloat)) -> NSLayoutConstraint {
    return lhs.equals(anchor: rhs.0, constant: rhs.1)
}

@discardableResult
public func ~= <Anchor: LeanLayoutAnchor> (lhs: Anchor, rhs: Anchor) -> NSLayoutConstraint {
    return lhs.equals(anchor: rhs)
}

@discardableResult
public func ~= (lhs: NSLayoutDimension, rhs: NSLayoutDimension) -> NSLayoutConstraint {
    return lhs.equals(anchor: rhs)
}

@discardableResult
public func ~= (lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
    return lhs.equals(constant: rhs)
}

// MARK: - Constants

public func + <Anchor: LeanLayoutAnchor> (lhs: Anchor, rhs: CGFloat) -> (Anchor, CGFloat) {
    return (lhs, rhs)
}

public func - <Anchor: LeanLayoutAnchor> (lhs: Anchor, rhs: CGFloat) -> (Anchor, CGFloat) {
    return (lhs, -rhs)
}

// MARK: - Priority

precedencegroup LeanLayoutConstraintPrecedence {
    associativity: left
    lowerThan: ComparisonPrecedence
}

infix operator -->: LeanLayoutConstraintPrecedence

@discardableResult
public func --> (lhs: NSLayoutConstraint, rhs: UILayoutPriority) -> NSLayoutConstraint {
    lhs.priority = rhs
    return lhs
}
