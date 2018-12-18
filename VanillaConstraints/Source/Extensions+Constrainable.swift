//
//  Extensions+Constrainable.swift
//  VanillaConstraints
//
//  Created by Joan Disho on 13.08.18.
//  Copyright © 2018 Joan Disho. All rights reserved.
//

import Foundation
import UIKit

extension Constrainable {

    @discardableResult
    public func pinToEdges(of view: UIView? = nil, withInsets insets: UIEdgeInsets, safeConstrainable constrainable: Bool = false) -> Self {
        if #available(iOS 11.0, *), constrainable {
            return top(to: \.safeAreaLayoutGuide.topAnchor, of: view, constant: insets.top)
                .right(to: \.safeAreaLayoutGuide.rightAnchor, of: view, constant: insets.right)
                .bottom(to: \.safeAreaLayoutGuide.bottomAnchor, of: view, constant: insets.bottom)
                .left(to: \.safeAreaLayoutGuide.leftAnchor, of: view, constant: insets.left)
        }
        
        return top(to: \.topAnchor, of: view, constant: insets.top)
            .right(to: \.rightAnchor, of: view, constant: insets.right)
            .bottom(to: \.bottomAnchor, of: view, constant: insets.bottom)
            .left(to: \.leftAnchor, of: view, constant: insets.left)
        
    }
    
    @discardableResult
    public func pinToEdges(of view: UIView? = nil, withMargin margin: CGFloat = 0, safeConstrainable constrainable: Bool = false) -> Self {
        let insets = UIEdgeInsets(top: margin, left: margin, bottom: margin, right: margin)
        return pinToEdges(of: view, withInsets: insets, safeConstrainable: constrainable)

    }

    @discardableResult
    public func center(in view: UIView? = nil, withMargin margin: CGFloat = 0, relation: ConstraintRelation = .equal) -> Self {
        return centerX(to: \.centerXAnchor, of: view, relation: relation, constant: margin)
            .centerY(to: \.centerYAnchor, of: view, relation: relation, constant: margin)
    }

    @discardableResult
    public func size(_ size: CGSize, relation: ConstraintRelation = .equal) -> Self {
        return width(size.width, relation: relation)
            .height(size.height, relation: relation)
    }
}
