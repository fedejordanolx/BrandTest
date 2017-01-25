//
//  ViewController.swift
//  BrandTest
//
//  Created by OLX - Federico Jordan on 1/25/17.
//  Copyright © 2017 OLX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupInterface()
    }

}

// MARK:- Interface
extension ViewController {
    
    func setupInterface() {
        navigationController?.navigationBar.barTintColor = AppColor.navigationBackgroundColor
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: AppColor.navigationTitleColor]
        firstLabel.textColor = AppColor.labelFirstColor
        secondLabel.textColor = AppColor.labelSecondColor
        thirdLabel.textColor = AppColor.labelCommonColor
        button.setTitleColor(AppColor.buttonColor, for: .normal)
    }
}

