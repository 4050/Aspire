//
//  CustomCircleButton.swift
//  Aspire
//
//  Created by Stanislav on 11.07.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class CustomUIViewCircleButton: UIView {

      override init(frame: CGRect) {
        super.init(frame: frame)
        setupUIView()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
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
        layer.shadowOffset  = CGSize(width: 1, height: 1)
        layer.shadowRadius  = 5
        layer.shadowOpacity = 0.3
        clipsToBounds       = true
        layer.masksToBounds = false
    }

}
