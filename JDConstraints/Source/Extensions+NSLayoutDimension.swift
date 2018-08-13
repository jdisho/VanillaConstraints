//
//  Extensions+NSLayoutDimension.swift
//  JDConstraints
//
//  Created by Joan Disho on 13.08.18.
//  Copyright © 2018 Joan Disho. All rights reserved.
//

import Foundation
import UIKit

extension NSLayoutDimension {
    internal func constraint(
        to dimension: NSLayoutDimension,
        relation: ConstraintRelation = .equal
        ) -> NSLayoutConstraint {
        switch relation {
        case .equal:
            return constraint(equalTo: dimension)
        case .equalOrLess:
            return constraint(lessThanOrEqualTo: dimension)
        case .equalOrGreater:
            return constraint(greaterThanOrEqualTo: dimension)
        }
    }

    internal func constraint(
        toConstant constant: CGFloat,
        relation: ConstraintRelation = .equal
        ) -> NSLayoutConstraint {
        switch relation {
        case .equal:
            return constraint(equalToConstant: constant)
        case .equalOrLess:
            return constraint(lessThanOrEqualToConstant: constant)
        case .equalOrGreater:
            return constraint(greaterThanOrEqualToConstant: constant)
        }
    }
}
