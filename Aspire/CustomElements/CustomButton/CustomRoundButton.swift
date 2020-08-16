//
//  CustomButton.swift
//  Aspire
//
//  Created by Stanislav on 01.07.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit


@IBDesignable class CustomRoundButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    override func prepareForInterfaceBuilder() {
         setupButton()
     }
    
    func setupButton() {
        setShadow()
        layer.cornerRadius   = 30
        layer.borderWidth    = 0.1
        layer.borderColor    = UIColor.darkGray.cgColor
    }
    
    private func setShadow() {
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowOffset  = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius  = 8
        layer.shadowOpacity = 0.2
        clipsToBounds       = true
        layer.masksToBounds = false
    }
    
    
}
