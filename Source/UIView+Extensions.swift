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
        topAnchor ~= superview.topAnchor + margins.top
        bottomAnchor ~= superview.bottomAnchor - margins.bottom
        leadingAnchor ~= superview.leadingAnchor + margins.leading
        trailingAnchor ~= superview.trailingAnchor - margins.trailing
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
        scrollView.heightAnchor ~= parentView.heightAnchor --> .defaultLow
        scrollView.widthAnchor ~= parentView.widthAnchor
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }
    
    public func embedInHorizontalScrollView(relativeTo parentView: UIView) -> UIScrollView {
        let scrollView = embedInScrollView(relativeTo: parentView)
        // set the width and height constraints
        scrollView.widthAnchor ~= parentView.widthAnchor --> .defaultLow
        scrollView.heightAnchor ~= parentView.heightAnchor
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
