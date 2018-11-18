//
//  Constrainable+NSLayoutDimension.swift
//  VanillaConstraints
//
//  Created by Joan Disho on 18.11.18.
//  Copyright © 2018 Joan Disho. All rights reserved.
//

import Foundation
import UIKit

extension Constrainable {

    @discardableResult
    public func width(
        _ constant: CGFloat,
        relation: ConstraintRelation = .equal,
        priority: UILayoutPriority = .required
        ) -> Self {
        target.widthAnchor
            .constraint(toConstant: constant, relation: relation)
            .priority(priority)
            .activate()

        return self
    }

    @discardableResult
    public func width<XAxis>(
        to dimension: KeyPath<UIView, XAxis>,
        of view: UIView? = nil,
        multiplier: CGFloat = 1,
        constant: CGFloat = 0,
        relation: ConstraintRelation = .equal,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutDimension {
        target.widthAnchor
            .constraint(to: (view ?? parent)[keyPath: dimension], multiplier: multiplier, relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()

        return self
    }

    @discardableResult
    public func height(
        _ constant: CGFloat,
        relation: ConstraintRelation = .equal,
        priority: UILayoutPriority = .required
        ) -> Self {
        target.heightAnchor
            .constraint(toConstant: constant, relation: relation)
            .priority(priority)
            .activate()

        return self
    }

    @discardableResult
    public func height<YAxis>(
        to dimension: KeyPath<UIView, YAxis>,
        of view: UIView? = nil,
        multiplier: CGFloat = 1,
        constant: CGFloat = 0,
        relation: ConstraintRelation = .equal,
        priority: UILayoutPriority = .required
        ) -> Self where YAxis: NSLayoutDimension {
        target.heightAnchor
            .constraint(to: (view ?? parent)[keyPath: dimension], multiplier: multiplier, relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()

        return self
    }
}
