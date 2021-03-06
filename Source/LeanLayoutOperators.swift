//
//  NSLayoutOperators+Overloading.swift
//  LeanLayoutKit
//
//  Created by Gonzalo Reyes Huertas on 12/29/18.
//  Copyright © 2018 Gonzalo Reyes Huertas. All rights reserved.
//

import Foundation

// MARK: - Constants

public func + <Anchor: LeanLayoutAnchor> (
    lhs: Anchor,
    rhs: CGFloat
) -> (Anchor, CGFloat) {
    return (lhs, rhs)
}

public func + <Anchor: LeanLayoutAnchor> (
    lhs: LeanLayoutProperty<Anchor>,
    rhs: CGFloat
) -> (LeanLayoutProperty<Anchor>, CGFloat) {
    return (lhs, rhs)
}

public func - <Anchor: LeanLayoutAnchor> (
    lhs: Anchor,
    rhs: CGFloat
) -> (Anchor, CGFloat) {
    return (lhs, -rhs)
}

public func - <Anchor: LeanLayoutAnchor> (
    lhs: LeanLayoutProperty<Anchor>,
    rhs: CGFloat
) -> (LeanLayoutProperty<Anchor>, CGFloat) {
    return (lhs, -rhs)
}
