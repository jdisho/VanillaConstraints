//
//  Extensions+NSLayoutXAxisAnchor.swift
//  JDConstraints
//
//  Created by Joan Disho on 13.08.18.
//  Copyright © 2018 Joan Disho. All rights reserved.
//

import Foundation
import UIKit

extension NSLayoutXAxisAnchor {
    internal func constraint(
        to anchor: NSLayoutXAxisAnchor,
        relation: ConstraintRelation = .equal
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
