//
//  UILabel+brand.swift
//  BrandTest
//
//  Created by OLX - Federico Jordan on 1/25/17.
//  Copyright © 2017 OLX. All rights reserved.
//

import Foundation
import UIKit

class ColorHelper {
    
    fileprivate class func color(fromStringID identifier: String) -> UIColor {
        if let color = AppColor.commonColorsDict[identifier] {
            return color
        } else if let color = AppColor.brandColorsArray[identifier] {
            return color
        }
        return UIColor.black
    }
    
    class func color(fromAppColor appColor: AppColor) -> UIColor {
        return color(fromStringID: appColor.rawValue)
    }
}

@IBDesignable extension UILabel {
    
    @IBInspectable var brandTextColor: String {
        get { return self.brandTextColor }
        set(newValue) { textColor = ColorHelper.color(fromStringID: newValue) }
    }
}

@IBDesignable extension UIButton {
    
    @IBInspectable var brandTitleColor: String {
        get { return self.brandTitleColor }
        set(newValue) { setTitleColor(ColorHelper.color(fromStringID: newValue), for: .normal) }
    }
}

@IBDesignable extension UINavigationBar {
    
    @IBInspectable var brandBarTintColor: String {
        get { return self.brandBarTintColor }
        set(newValue) { barTintColor = ColorHelper.color(fromStringID: newValue) }
    }
    
    @IBInspectable var brandNavigationTitleColor: String {
        get { return self.brandNavigationTitleColor }
        set(newValue) { titleTextAttributes = [NSForegroundColorAttributeName: ColorHelper.color(fromStringID: newValue)] }
    }
}
