//
//  Constrainable.swift
//  VanillaConstraints
//
//  Created by Joan Disho on 13.08.18.
//  Copyright © 2018 Joan Disho. All rights reserved.
//

import Foundation
import UIKit

public protocol Constrainable: class {
    var parent: UIView { get }
    var target: UIView { get }
}
