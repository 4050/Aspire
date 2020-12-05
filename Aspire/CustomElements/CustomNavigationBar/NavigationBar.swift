//
//  NavigationController.swift
//  Aspire
//
//  Created by Stanislav on 14.07.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class NavigationBar: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationConrtoller()
    }
    
    func setupNavigationConrtoller() {
        navigationBar.shadowImage = UIImage()
        navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationBar.isTranslucent = true
        view.backgroundColor = UIColor.clear
        
    }

}
