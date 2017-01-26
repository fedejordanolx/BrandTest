//
//  CommonColor.swift
//  BrandTest
//
//  Created by OLX - Federico Jordan on 1/25/17.
//  Copyright © 2017 OLX. All rights reserved.
//

import Foundation
import UIKit

enum AppColor: String {
    case labelCommonColor
    case labelFirstColor
    case labelSecondColor
    case buttonColor
    case navigationTitleColor
    case navigationBackgroundColor
    
    static let commonColorsDict = [AppColor.labelCommonColor.rawValue: Color.green]
}
