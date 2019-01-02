//
//  NSLayoutCustomOperator.swift
//  LeanLayoutKit
//
//  Created by Gonzalo Reyes Huertas on 12/29/18.
//  Copyright © 2018 Gonzalo Reyes Huertas. All rights reserved.
//

import Foundation

precedencegroup LeanLayoutConstraintPrecedence {
    associativity: left
    lowerThan: ComparisonPrecedence
}

infix operator -->: LeanLayoutConstraintPrecedence
