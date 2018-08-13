//
//  UIView+Constrainable.swift
//  JDConstraints
//
//  Created by Joan Disho on 13.08.18.
//  Copyright © 2018 Joan Disho. All rights reserved.
//

import Foundation
import UIKit

extension UIView: Constrainable {
    public var parentView: UIView {
        guard let parent = superview else { fatalError("The view has no superview") }
        return parent
    }

    var childView: UIView {
        return self
    }
}
