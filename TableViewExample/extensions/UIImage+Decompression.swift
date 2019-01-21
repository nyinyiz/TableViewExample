//
//  UIImage+Decompression.swift
//  TableViewExample
//
//  Created by Sheilar June on 1/16/19.
//  Copyright © 2019 rooking. All rights reserved.
//

import Foundation
import UIKit
extension UIImage {
    
    var decompressedImage: UIImage {
        UIGraphicsBeginImageContextWithOptions(size, true, 0)
        draw(at: CGPoint.zero)
        let decompressedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return decompressedImage!
    }
    
}
