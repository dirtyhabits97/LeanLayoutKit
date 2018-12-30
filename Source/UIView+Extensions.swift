//
//  UIView+Extensions.swift
//  LeanLayoutKit
//
//  Created by Gonzalo Reyes Huertas on 12/29/18.
//  Copyright © 2018 Gonzalo Reyes Huertas. All rights reserved.
//

import UIKit

extension UIEdgeInsets {
    
    fileprivate var leading: CGFloat { return left }
    fileprivate var trailing: CGFloat { return right }
    
}

extension UIView {
    
    public func fillSuperView(withMargins margins: UIEdgeInsets = .zero) {
        guard let superview = self.superview else { return }
        translatesAutoresizingMaskIntoConstraints = false
        (topAnchor ~> superview.topAnchor) + margins.top
        (bottomAnchor ~> superview.bottomAnchor) + margins.bottom
        (leadingAnchor ~> superview.leadingAnchor) + margins.leading
        (trailingAnchor ~> superview.trailingAnchor) + margins.trailing
    }
    
    public func addAndFill(withSubView view: UIView, margins: UIEdgeInsets = .zero) {
        addSubview(view)
        view.fillSuperView(withMargins: margins)
    }
}
