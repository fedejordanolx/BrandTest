//
//  SecondBrandColor.swift
//  BrandTest
//
//  Created by OLX - Federico Jordan on 1/25/17.
//  Copyright © 2017 OLX. All rights reserved.
//

import Foundation
import UIKit

class AppColorHelper {
    
    class func color(fromElementColor elementColor: AppColor) -> UIColor {
        switch elementColor {
        case .labelFirst:              return SecondBrandPalette.red
        case .labelSecond:             return SecondBrandPalette.green
        case .button:                  return SecondBrandPalette.yellow
        case .navigationTitle:         return SecondBrandPalette.darkGray
        case .navigationBackground:    return SecondBrandPalette.orange
        }
    }
}
