//
//  Constrainable+UIView.swift
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
}
