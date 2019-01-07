//
//  LeanLayoutProxy.swift
//  LeanLayoutKit
//
//  Created by Gonzalo Reyes Huertas on 1/6/19.
//  Copyright © 2019 Gonzalo Reyes Huertas. All rights reserved.
//

import UIKit

// Inspired from https://www.swiftbysundell.com/posts/building-dsls-in-swift
public final class LeanLayoutProxy {
    
    // MARK: - Properties
    
    public lazy var top      = LeanLayoutProperty(anchor: view.topAnchor)
    public lazy var bottom   = LeanLayoutProperty(anchor: view.bottomAnchor)
    public lazy var leading  = LeanLayoutProperty(anchor: view.leadingAnchor)
    public lazy var trailing = LeanLayoutProperty(anchor: view.trailingAnchor)
    public lazy var height   = LeanLayoutProperty(anchor: view.heightAnchor)
    public lazy var width    = LeanLayoutProperty(anchor: view.widthAnchor)
    public lazy var centerX  = LeanLayoutProperty(anchor: view.centerXAnchor)
    public lazy var centerY  = LeanLayoutProperty(anchor: view.centerYAnchor)
    
    private let view: UIView
    
    public var frame:  CGRect { return view.frame }
    public var bounds: CGRect { return view.bounds }
    
    // MARK: - Initializer
    
    init(view: UIView) {
        self.view = view
    }
    
}
