//
//  Constrainable.swift
//  JDConstraints
//
//  Created by Joan Disho on 13.08.18.
//  Copyright © 2018 Joan Disho. All rights reserved.
//

import Foundation
import UIKit

protocol Constrainable: class {
    var parentView: UIView { get }
    var childView: UIView { get }
}
