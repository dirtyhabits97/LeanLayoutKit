//
//  UIView+Extensions.swift
//  LeanLayoutKit
//
//  Created by Gonzalo Reyes Huertas on 12/29/18.
//  Copyright © 2018 Gonzalo Reyes Huertas. All rights reserved.
//

import UIKit

extension UIView {
    
    public func layout(_ configure: (LeanLayoutProxy) -> Void) {
        translatesAutoresizingMaskIntoConstraints = false
        configure(LeanLayoutProxy(view: self))
    }
    
    public func layout(relativeTo otherView: UIView,
                       _ configure: (_ view: LeanLayoutProxy, _ otherView: LeanLayoutProxy) -> Void) {
        translatesAutoresizingMaskIntoConstraints = false
        otherView.translatesAutoresizingMaskIntoConstraints = false
        configure(LeanLayoutProxy(view: self), LeanLayoutProxy(view: otherView))
    }
    
    public func layout(addTo parentView: UIView,
                       _ configure: (_ view: LeanLayoutProxy, _ parentView: LeanLayoutProxy) -> Void) {
        parentView.addSubview(self)
        layout(relativeTo: parentView, configure)
    }
    
}

extension UIEdgeInsets {
    
    fileprivate var leading: CGFloat { return left }
    fileprivate var trailing: CGFloat { return right }
    
}

extension UIView {
    
    public func fillSuperView(withMargins margins: UIEdgeInsets = .zero) {
        guard let superview = self.superview else { return }
        layout(relativeTo: superview) { (view, superview) in
            view.top == superview.top + margins.top
            view.bottom == superview.bottom - margins.bottom
            view.leading == superview.leading + margins.leading
            view.trailing == superview.trailing - margins.trailing
        }
    }
    
    public func addAndFill(withSubView view: UIView, margins: UIEdgeInsets = .zero) {
        addSubview(view)
        view.fillSuperView(withMargins: margins)
    }
    
}

extension UIView {
    
    public func embedInVerticalScrollView(relativeTo parentView: UIView) -> UIScrollView {
        let scrollView = embedInScrollView(relativeTo: parentView)
        // set the width and height constraints
        scrollView.layout(relativeTo: parentView) { (scrollView, parentView) in
            scrollView.height == parentView.height --> .defaultLow
            scrollView.width == parentView.width
        }
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }
    
    public func embedInHorizontalScrollView(relativeTo parentView: UIView) -> UIScrollView {
        let scrollView = embedInScrollView(relativeTo: parentView)
        // set the width and height constraints
        scrollView.layout(relativeTo: parentView) { (scrollView, parentView) in
            scrollView.width == parentView.width --> .defaultLow
            scrollView.height == parentView.height
        }
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }
    
    private func embedInScrollView(relativeTo parentView: UIView) -> UIScrollView {
        let scrollView = UIScrollView()
        scrollView.contentInsetAdjustmentBehavior = .scrollableAxes
        scrollView.addAndFill(withSubView: self)
        parentView.addAndFill(withSubView: scrollView)
        return scrollView
    }
    
}
