//
//  LeanLayoutProperty.swift
//  LeanLayoutKit
//
//  Created by Gonzalo Reyes Huertas on 1/6/19.
//  Copyright © 2019 Gonzalo Reyes Huertas. All rights reserved.
//

import UIKit

// Anchor wrapper
public struct LeanLayoutProperty <Anchor: LeanLayoutAnchor> {
    
    let anchor: Anchor
    
}

extension LeanLayoutProperty {
    
    @discardableResult
    public static func == (lhs: LeanLayoutProperty, rhs: Anchor) -> NSLayoutConstraint {
        return lhs.anchor.equals(anchor: rhs)
    }
    
    @discardableResult
    public static func == (lhs: LeanLayoutProperty, rhs: (Anchor, CGFloat)) -> NSLayoutConstraint {
        return lhs.anchor.equals(anchor: rhs.0, constant: rhs.1)
    }
    
    @discardableResult
    public static func >= (lhs: LeanLayoutProperty, rhs: Anchor) -> NSLayoutConstraint {
        return lhs.anchor.greaterOrEquals(anchor: rhs)
    }
    
    @discardableResult
    public static func >= (lhs: LeanLayoutProperty, rhs: (Anchor, CGFloat)) -> NSLayoutConstraint {
        return lhs.anchor.greaterOrEquals(anchor: rhs.0, constant: rhs.1)
    }
    
    @discardableResult
    public static func <= (lhs: LeanLayoutProperty, rhs: Anchor) -> NSLayoutConstraint {
        return lhs.anchor.lessOrEquals(anchor: rhs)
    }
    
    @discardableResult
    public static func <= (lhs: LeanLayoutProperty, rhs: (Anchor, CGFloat)) -> NSLayoutConstraint {
        return lhs.anchor.lessOrEquals(anchor: rhs.0, constant: rhs.1)
    }
    
}

extension LeanLayoutProperty {
    
    @discardableResult
    public static func == (lhs: LeanLayoutProperty, rhs: LeanLayoutProperty) -> NSLayoutConstraint {
        return lhs.anchor.equals(anchor: rhs.anchor)
    }
    
    @discardableResult
    public static func == (lhs: LeanLayoutProperty, rhs: (LeanLayoutProperty, CGFloat)) -> NSLayoutConstraint {
        return lhs.anchor.equals(anchor: rhs.0.anchor, constant: rhs.1)
    }
    
    @discardableResult
    public static func >= (lhs: LeanLayoutProperty, rhs: LeanLayoutProperty) -> NSLayoutConstraint {
        return lhs.anchor.greaterOrEquals(anchor: rhs.anchor)
    }
    
    @discardableResult
    public static func >= (lhs: LeanLayoutProperty, rhs: (LeanLayoutProperty, CGFloat)) -> NSLayoutConstraint {
        return lhs.anchor.greaterOrEquals(anchor: rhs.0.anchor, constant: rhs.1)
    }
    
    @discardableResult
    public static func <= (lhs: LeanLayoutProperty, rhs: LeanLayoutProperty) -> NSLayoutConstraint {
        return lhs.anchor.lessOrEquals(anchor: rhs.anchor)
    }
    
    @discardableResult
    public static func <= (lhs: LeanLayoutProperty, rhs: (LeanLayoutProperty, CGFloat)) -> NSLayoutConstraint {
        return lhs.anchor.lessOrEquals(anchor: rhs.0.anchor, constant: rhs.1)
    }
    
}

extension LeanLayoutProperty where Anchor == NSLayoutDimension {
    
    @discardableResult
    public static func == (lhs: LeanLayoutProperty, rhs: CGFloat) -> NSLayoutConstraint {
        return lhs.anchor.equals(constant: rhs)
    }
    
    @discardableResult
    public static func >= (lhs: LeanLayoutProperty, rhs: CGFloat) -> NSLayoutConstraint {
        return lhs.anchor.greaterOrEquals(constant: rhs)
    }
    
    @discardableResult
    public static func <= (lhs: LeanLayoutProperty, rhs: CGFloat) -> NSLayoutConstraint {
        return lhs.anchor.lessOrEquals(constant: rhs)
    }
    
}
