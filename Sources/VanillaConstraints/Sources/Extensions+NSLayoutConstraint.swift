//
//  Extensions+NSLayoutConstraint.swift
//  VanillaConstraints
//
//  Created by Joan Disho on 13.08.18.
//  Copyright © 2018 Joan Disho. All rights reserved.
//

import Foundation
import UIKit

extension NSLayoutConstraint {

    internal func priority(_ priority: UILayoutPriority) -> Self {
        self.priority = priority
        return self
    }

    internal func offset(_ offset: CGFloat) -> Self {
        constant = offset
        return self
    }

    internal func activate() -> Self {
        isActive = true
        return self
    }

    internal func deactivate() -> Self {
        isActive = false
        return self
    }
}
