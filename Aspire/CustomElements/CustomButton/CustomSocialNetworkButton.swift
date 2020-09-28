//
//  CustomSocialNetworkButton.swift
//  Aspire
//
//  Created by Stanislav on 13.08.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class CustomSocialNetworkButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton() {
        setShadow()
        layer.cornerRadius   = 8
        layer.borderWidth    = 0.0
        layer.borderColor    = UIColor.darkGray.cgColor
    }
    
    private func setShadow() {
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowOffset  = CGSize(width: 1, height: 1)
        layer.shadowRadius  = 5
        layer.shadowOpacity = 0.05
        clipsToBounds       = true
        layer.masksToBounds = false
    }
    
}
