//
//  UILabel+brand.swift
//  BrandTest
//
//  Created by OLX - Federico Jordan on 1/25/17.
//  Copyright © 2017 OLX. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable extension UILabel {
    
    @IBInspectable var brandTextColor: String {
        get { return self.brandTextColor }
        set(newValue) {
            if let newColorValue = AppColor(rawValue: newValue)?.color {
                textColor = newColorValue
            }
        }
    }
}

@IBDesignable extension UIButton {
    
    @IBInspectable var brandTitleColor: String {
        get { return self.brandTitleColor }
        set(newValue) {
            if let newColorValue = AppColor(rawValue: newValue)?.color {
                setTitleColor(newColorValue, for: .normal)
            }
        }
    }
}

@IBDesignable extension UINavigationBar {
    
    @IBInspectable var brandBarTintColor: String {
        get { return self.brandBarTintColor }
        set(newValue) {
            if let newColorValue = AppColor(rawValue: newValue)?.color {
                barTintColor = newColorValue
            }
        }
    }
    
    @IBInspectable var brandNavigationTitleColor: String {
        get { return self.brandNavigationTitleColor }
        set(newValue) {
            if let newColorValue = AppColor(rawValue: newValue)?.color {
                titleTextAttributes = [NSForegroundColorAttributeName: newColorValue]
            }
        }
    }
}
