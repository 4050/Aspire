//
//  CustomUIView.swift
//  Aspire
//
//  Created by Stanislav on 30.08.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class CustomUIView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    override func awakeFromNib() {
        setupView()
    }
    
    
    func setupView() {
        setShadow()
        layer.cornerRadius   = 12
        layer.borderWidth    = 0.1
        layer.borderColor    = UIColor.darkGray.cgColor
    }
    
    private func setShadow() {
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowOffset  = CGSize(width: 1, height: 1)
        layer.shadowRadius  = 10
        layer.shadowOpacity = 1
        layer.masksToBounds = false
    }
    
}
