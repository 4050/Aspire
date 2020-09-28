//
//  CustomTabBar.swift
//  Aspire
//
//  Created by Stanislav on 04.08.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class CustomTabBar: UITabBar {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTabBar()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupTabBar()
    }
    
    func setupTabBar() {
        layer.cornerRadius = 30
        layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        layer.masksToBounds = true
    }
}
