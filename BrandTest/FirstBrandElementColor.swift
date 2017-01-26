//
//  FirstBrandColor.swift
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
        case .labelFirst:              return FirstBrandPalette.green
        case .labelSecond:             return FirstBrandPalette.red
        case .button:                  return FirstBrandPalette.blue1
        case .navigationTitle:         return FirstBrandPalette.orange
        case .navigationBackground:    return FirstBrandPalette.darkGray
        }
    }
}
