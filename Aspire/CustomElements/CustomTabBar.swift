//
//  CustomTabBar.swift
//  Aspire
//
//  Created by Stanislav on 04.08.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

@IBDesignable class CustomTabBar: UITabBar {
    
    var tabBar = UITabBar()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTabBar()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupTabBar()
    }
    
    override func prepareForInterfaceBuilder() {
        setupTabBar()
    }
    
    func setupTabBar() {
        tabBar.layer.borderWidth    = 1
        tabBar.layer.borderColor    = UIColor.darkGray.cgColor
    }
}
