//
//  CustomCircleButton.swift
//  Aspire
//
//  Created by Stanislav on 11.07.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

@IBDesignable class CustomUIViewCircleButton: UIView {

      override init(frame: CGRect) {
        super.init(frame: frame)
        setupUIView()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUIView()
    }
    
    override func prepareForInterfaceBuilder() {
         setupUIView()
     }
    
    func setupUIView() {
        setShadow()
        layer.cornerRadius   = 25
        layer.borderColor    = UIColor.darkGray.cgColor
        layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }
    
    private func setShadow() {
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowOffset  = CGSize(width: 0.0, height: 2.0)
        layer.shadowRadius  = 2
        layer.shadowOpacity = 0.2
        clipsToBounds       = true
        layer.masksToBounds = false
    }

}
