//
//  Constrainable+NSLayoutYAxisAnchor.swift
//  VanillaConstraints
//
//  Created by Joan Disho on 18.11.18.
//  Copyright © 2018 Joan Disho. All rights reserved.
//

import Foundation
import UIKit

extension Constrainable {

    @discardableResult
    public func top<YAxis>(
        to anchor: KeyPath<UIView, YAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where YAxis: NSLayoutYAxisAnchor {
        target.topAnchor
            .constraint(to: (view ?? parent)[keyPath: anchor], relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()

        return self
    }

    @discardableResult
    public func bottom<YAxis>(
        to anchor: KeyPath<UIView, YAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where YAxis: NSLayoutYAxisAnchor {
        target.bottomAnchor
            .constraint(to: (view ?? parent)[keyPath: anchor], relation: relation)
            .offset(-constant)
            .priority(priority)
            .activate()

        return self
    }

    @discardableResult
    public func centerY<YAxis>(
        to anchor: KeyPath<UIView, YAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where YAxis: NSLayoutYAxisAnchor {
        target.centerYAnchor
            .constraint(to: (view ?? parent)[keyPath: anchor], relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()

        return self
    }
}
