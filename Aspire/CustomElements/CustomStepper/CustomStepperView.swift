//
//  CustomStepperView.swift
//  Aspire
//
//  Created by Stanislav on 05.09.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class CustomStepperView: UIView {
    
   // @IBOutlet var stackView: UIStackView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupStepperView()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupStepperView()
    }
    
    override func awakeFromNib() {
        setupStepperView()
    }
    
    func setupStepperView() {
        setShadow()
        layer.cornerRadius   = 7
    }
    
    private func setShadow() {
         layer.shadowColor   = UIColor.black.cgColor
         layer.shadowOffset  = CGSize(width: 0, height: 1)
         layer.shadowRadius  = 5
         layer.shadowOpacity = 0.2
         layer.masksToBounds = false
     }
    
}
