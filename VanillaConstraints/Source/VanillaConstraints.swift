//
//  VanillaConstraints.swift
//  VanillaConstraints
//
//  Created by Joan Disho on 13.08.18.
//  Copyright © 2018 Joan Disho. All rights reserved.
//

import Foundation
import UIKit

extension Constrainable {

    @discardableResult
    public func add(to parent: UIView) -> Self {
        target.translatesAutoresizingMaskIntoConstraints = false
        parent.addSubview(target)

        return self
    }

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
    public func left<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutXAxisAnchor {
        target.leftAnchor
            .constraint(to: (view ?? parent)[keyPath: anchor], relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()

        return self
    }

    @discardableResult
    public func right<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutXAxisAnchor {
        target.rightAnchor
            .constraint(to: (view ?? parent)[keyPath: anchor], relation: relation)
            .offset(-constant)
            .priority(priority)
            .activate()

        return self
    }

    @discardableResult
    public func leading<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutXAxisAnchor {
        target.leadingAnchor
            .constraint(to: (view ?? parent)[keyPath: anchor], relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()

        return self
    }

    @discardableResult
    public func trailing<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutXAxisAnchor {
        target.trailingAnchor
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

    @discardableResult
    public func centerX<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutXAxisAnchor {
        target.centerXAnchor
            .constraint(to: (view ?? parent)[keyPath: anchor], relation: relation)
            .offset(constant)
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
    public func width(
        _ constant: CGFloat,
        relation: ConstraintRelation = .equal,
        priority: UILayoutPriority = .required
        ) -> Self {
        target.widthAnchor
            .constraint(toConstant: constant)
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
            .constraint(toConstant: constant)
            .priority(priority)
            .activate()

        return self
    }
}
