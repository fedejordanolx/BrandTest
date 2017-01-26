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
    case labelFirst
    case labelSecond
    case button
    case navigationTitle
    case navigationBackground
    
    var color: UIColor {
        return AppColorHelper.color(fromAppColor: self)
    }
}
