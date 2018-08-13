//
//  JDConstraints.swift
//  JDConstraints
//
//  Created by Joan Disho on 13.08.18.
//  Copyright © 2018 Joan Disho. All rights reserved.
//

import Foundation
import UIKit

extension Constrainable {

    @discardableResult
    public func add(to parentView: UIView) -> Self {
        childView.translatesAutoresizingMaskIntoConstraints = false
        parentView.addSubview(childView)

        return self
    }

    @discardableResult
    public func top<YAxis>(
        to anchor: KeyPath<UIView, YAxis>,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where YAxis: NSLayoutYAxisAnchor {
        childView.topAnchor
            .constraint(to: parentView[keyPath: anchor], relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()

        return self
    }

    @discardableResult
    public func bottom<YAxis>(
        to anchor: KeyPath<UIView, YAxis>,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where YAxis: NSLayoutYAxisAnchor {
        childView.bottomAnchor
            .constraint(to: parentView[keyPath: anchor], relation: relation)
            .offset(-constant)
            .priority(priority)
            .activate()

        return self
    }

    @discardableResult
    public func left<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutXAxisAnchor {
        childView.leftAnchor
            .constraint(to: parentView[keyPath: anchor], relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()

        return self
    }

    @discardableResult
    public func right<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutXAxisAnchor {
        childView.rightAnchor
            .constraint(to: parentView[keyPath: anchor], relation: relation)
            .offset(-constant)
            .priority(priority)
            .activate()

        return self
    }

    @discardableResult
    public func leading<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutXAxisAnchor {
        childView.leadingAnchor
            .constraint(to: parentView[keyPath: anchor], relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()

        return self
    }

    @discardableResult
    public func trailing<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutXAxisAnchor {
        childView.trailingAnchor
            .constraint(to: parentView[keyPath: anchor], relation: relation)
            .offset(-constant)
            .priority(priority)
            .activate()

        return self
    }


    @discardableResult
    public func centerY<YAxis>(
        to anchor: KeyPath<UIView, YAxis>,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where YAxis: NSLayoutYAxisAnchor {
        childView.centerYAnchor
            .constraint(to: parentView[keyPath: anchor], relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()

        return self
    }

    @discardableResult
    public func centerX<XAxis>(
        to anchor: KeyPath<UIView, XAxis>,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutXAxisAnchor {
        childView.centerXAnchor
            .constraint(to: parentView[keyPath: anchor], relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()

        return self
    }

    @discardableResult
    public func height<YAxis>(
        to dimension: KeyPath<UIView, YAxis>,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where YAxis: NSLayoutDimension {
        childView.heightAnchor
            .constraint(to: parentView[keyPath: dimension], relation: relation)
            .offset(constant)
            .priority(priority)
            .activate()

        return self
    }

    @discardableResult
    public func width<XAxis>(
        to dimension: KeyPath<UIView, XAxis>,
        relation: ConstraintRelation = .equal,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required
        ) -> Self where XAxis: NSLayoutDimension {
        childView.widthAnchor
            .constraint(to: parentView[keyPath: dimension], relation: relation)
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
        childView.widthAnchor
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
        childView.heightAnchor
            .constraint(toConstant: constant)
            .priority(priority)
            .activate()

        return self
    }
}
