//
//  CustomUIImageView.swift
//  Aspire
//
//  Created by Stanislav on 06.07.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

@IBDesignable class CustomUIImageView: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupImageView()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupImageView()
    }
    
    override func prepareForInterfaceBuilder() {
        setupImageView()
    }
    
    func setupImageView() {
        setShadow()
        layer.cornerRadius   = 25
        layer.borderWidth    = 0.1
        layer.borderColor    = UIColor.darkGray.cgColor
        
    }
    
    private func setShadow() {
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowOffset  = CGSize(width: 0, height: 0)
        layer.shadowRadius  = 10
        layer.shadowOpacity = 0.2
        clipsToBounds = false
        layer.masksToBounds = false
    }
    
    
}
