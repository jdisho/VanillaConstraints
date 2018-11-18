//
//  Constrainable+NSLayoutXAxisAnchor.swift
//  VanillaConstraints
//
//  Created by Joan Disho on 18.11.18.
//  Copyright © 2018 Joan Disho. All rights reserved.
//

import Foundation
import UIKit

extension Constrainable {

    @discardableResult
    public func addLeftConstraint<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> NSLayoutConstraint where XAxis: NSLayoutXAxisAnchor {
        return target.leftAnchor
            .constraint(to: (view ?? parent)[keyPath: anchor], relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()
    }

    @discardableResult
    public func left<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutXAxisAnchor {
        addLeftConstraint(to: anchor, of: view, relation: relation, constant: constant, priority: priority)
        return self
    }

    @discardableResult
    public func addRightConstraint<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> NSLayoutConstraint where XAxis: NSLayoutXAxisAnchor {
        return target.rightAnchor
            .constraint(to: (view ?? parent)[keyPath: anchor], relation: relation)
            .offset(-constant)
            .priority(priority)
            .activate()
    }

    @discardableResult
    public func right<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutXAxisAnchor {
        addRightConstraint(to: anchor, of: view, relation: relation, constant: constant, priority: priority)
        return self
    }

    @discardableResult
    public func addLeadingConstraint<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> NSLayoutConstraint where XAxis: NSLayoutXAxisAnchor {
        return target.leadingAnchor
            .constraint(to: (view ?? parent)[keyPath: anchor], relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()
    }

    @discardableResult
    public func leading<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutXAxisAnchor {
        addLeadingConstraint(to: anchor, of: view, relation: relation, constant: constant, priority: priority)
        return self
    }

    @discardableResult
    public func addTrailingConstraint<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> NSLayoutConstraint where XAxis: NSLayoutXAxisAnchor {
        return target.trailingAnchor
            .constraint(to: (view ?? parent)[keyPath: anchor], relation: relation)
            .offset(-constant)
            .priority(priority)
            .activate()
    }

    @discardableResult
    public func trailing<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutXAxisAnchor {
        addTrailingConstraint(to: anchor, of: view, relation: relation, constant: constant, priority: priority)
        return self
    }

    @discardableResult
    public func addCenterXConstraint<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> NSLayoutConstraint where XAxis: NSLayoutXAxisAnchor {
        return target.centerXAnchor
            .constraint(to: (view ?? parent)[keyPath: anchor], relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()
    }

    @discardableResult
    public func centerX<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        of view: UIView? = nil,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutXAxisAnchor {
        addCenterXConstraint(to: anchor, of: view, relation: relation, constant: constant, priority: priority)
        return self
    }
}
