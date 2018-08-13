//
//  Extensions+JDConstrainable.swift
//  JDConstraints
//
//  Created by Joan Disho on 13.08.18.
//  Copyright © 2018 Joan Disho. All rights reserved.
//

import Foundation
import UIKit

extension Constrainable {
    
    @discardableResult
    public func pinToEgdes(withMargin margin: CGFloat = 0) -> Self {
        return top(to: \.topAnchor, constant: margin)
            .right(to: \.rightAnchor, constant: margin)
            .bottom(to: \.bottomAnchor, constant: margin)
            .left(to: \.leftAnchor, constant: margin)
    }

    @discardableResult
    public func center(withMargin margin: CGFloat = 0) -> Self {
        return centerX(to: \.centerXAnchor, constant: margin)
            .centerY(to: \.centerYAnchor, constant: margin)
    }

    @discardableResult
    public func size(_ size: CGSize) -> Self {
        return width(size.width)
            .height(size.height)
    }
}
