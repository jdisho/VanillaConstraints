//
//  UIView+Constrainable.swift
//  VanillaConstraints
//
//  Created by Joan Disho on 13.08.18.
//  Copyright © 2018 Joan Disho. All rights reserved.
//

import Foundation
import UIKit

extension UIView: Constrainable {
    public var parent: UIView {
        guard let parent = superview else { fatalError("The view has no superview") }
        return parent
    }

    public var target: UIView {
        return self
    }
}

