//
//  UIView+Extensions.swift
//  LeanLayoutKit
//
//  Created by Gonzalo Reyes Huertas on 12/29/18.
//  Copyright © 2018 Gonzalo Reyes Huertas. All rights reserved.
//

import UIKit

public extension UIView {
    
    func layout(_ configure: (LeanLayoutProxy) -> Void) {
        translatesAutoresizingMaskIntoConstraints = false
        configure(LeanLayoutProxy(view: self))
    }
    
    func layout(relativeTo otherView: UIView,
                       _ configure: (_ lhs: LeanLayoutProxy, _ rhs: LeanLayoutProxy) -> Void) {
        translatesAutoresizingMaskIntoConstraints = false
        configure(LeanLayoutProxy(view: self), LeanLayoutProxy(view: otherView))
    }
    
}

private extension UIEdgeInsets {
    
    init(_ constant: CGFloat) {
        self.init(top: constant, left: constant, bottom: constant, right: constant)
    }
    
}

public extension UIView {
    
    func fillSuperview(withMargins margins: UIEdgeInsets = .zero) {
        guard let superview = self.superview else { return }
        layout(relativeTo: superview) { (view, superview) in
            view.top == superview.top + margins.top
            view.bottom == superview.bottom - margins.bottom
            view.leading == superview.leading + margins.left
            view.trailing == superview.trailing - margins.right
        }
    }
    
    func fillSuperview(withPadding padding: CGFloat) {
        fillSuperview(withMargins: UIEdgeInsets(padding))
    }
    
}
