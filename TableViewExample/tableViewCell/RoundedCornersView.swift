//
//  RoundedCornersView.swift
//  TableViewExample
//
//  Created by Sheilar June on 1/16/19.
//  Copyright © 2019 rooking. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class RoundedCornersView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
}
