//
//  Extensions+NSLayoutYAxisAnchor.swift
//  VanillaConstraints
//
//  Created by Joan Disho on 13.08.18.
//  Copyright © 2018 Joan Disho. All rights reserved.
//

import Foundation
import UIKit

extension NSLayoutYAxisAnchor {

    internal func constraint(
        to anchor: NSLayoutYAxisAnchor,
        relation: ConstraintRelation
        ) -> NSLayoutConstraint {
        switch relation {
        case .equal:
            return constraint(equalTo: anchor)
        case .equalOrLess:
            return constraint(lessThanOrEqualTo: anchor)
        case .equalOrGreater:
            return constraint(greaterThanOrEqualTo: anchor)
        }
    }
}
