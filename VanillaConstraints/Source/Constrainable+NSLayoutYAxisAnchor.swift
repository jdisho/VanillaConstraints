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
    public func addTopConstraint<YAxis>(
        to anchor: KeyPath<UIView, YAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> NSLayoutConstraint where YAxis: NSLayoutYAxisAnchor {
        return target.topAnchor
            .constraint(to: (view ?? parent)[keyPath: anchor], relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()
    }

    @discardableResult
    public func top<YAxis>(
        to anchor: KeyPath<UIView, YAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where YAxis: NSLayoutYAxisAnchor {
        addTopConstraint(to: anchor, of: view, relation: relation, constant: constant, priority: priority)
        return self
    }

    @discardableResult
    public func addBottomConstraint<YAxis>(
        to anchor: KeyPath<UIView, YAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> NSLayoutConstraint where YAxis: NSLayoutYAxisAnchor {
        return target.bottomAnchor
            .constraint(to: (view ?? parent)[keyPath: anchor], relation: relation)
            .offset(-constant)
            .priority(priority)
            .activate()
    }

    @discardableResult
    public func bottom<YAxis>(
        to anchor: KeyPath<UIView, YAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where YAxis: NSLayoutYAxisAnchor {
        addBottomConstraint(to: anchor, of: view, relation: relation, constant: constant, priority: priority)
        return self
    }

    @discardableResult
    public func addCenterYConstraint<YAxis>(
        to anchor: KeyPath<UIView, YAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> NSLayoutConstraint where YAxis: NSLayoutYAxisAnchor {
        return target.centerYAnchor
            .constraint(to: (view ?? parent)[keyPath: anchor], relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()
    }

    @discardableResult
    public func centerY<YAxis>(
        to anchor: KeyPath<UIView, YAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where YAxis: NSLayoutYAxisAnchor {
        addCenterYConstraint(to: anchor, of: view, relation: relation, constant: constant, priority: priority)
        return self
    }
}
