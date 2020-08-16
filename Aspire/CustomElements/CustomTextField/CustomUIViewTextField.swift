//
//  CustomUIViewTextField.swift
//  Aspire
//
//  Created by Stanislav on 07.08.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

@IBDesignable class CustomUIViewTextField: UITextField {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTextField()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupTextField()
    }
    
    override func prepareForInterfaceBuilder() {
        setupTextField()
    }
    
    
    func setupTextField() {
        layer.cornerRadius = 25
        layer.borderWidth = 1
    }
        
}
