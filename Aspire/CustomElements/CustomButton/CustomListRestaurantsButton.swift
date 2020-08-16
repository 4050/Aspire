//
//  CustomListRestaurantsButton.swift
//  Aspire
//
//  Created by Stanislav on 04.08.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

@IBDesignable class CustomListRestaurantsButton: UIButton {
    
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
        layer.cornerRadius   = 10
        layer.borderWidth    = 0.1
        layer.borderColor    = UIColor.darkGray.cgColor
        
    }
    
    private func setShadow() {
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowOffset  = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius  = 8
        layer.shadowOpacity = 0.2
        layer.masksToBounds = false
        clipsToBounds       = true
    }
    
    public func ButtonEnableAnimation(titleName: String, firstImage: String, secondImage: String) {
        UIView.animate(withDuration: 0.4,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
                        if self.imageView != nil {
                            self.imageEdgeInsets = UIEdgeInsets(top: 0, left: -5, bottom: 0, right: 0)
                            self.titleEdgeInsets = UIEdgeInsets(top: 3, left: 10, bottom: 0, right: 0)
                        }
                        self.layer.frame.size = CGSize(width: 151.0, height: 44.0)
                        self.setTitle(titleName, for: .normal)
                        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
                        self.layer.backgroundColor = #colorLiteral(red: 0.9874770045, green: 0.2656408846, blue: 0.2610104084, alpha: 1)
                        self.setImage(UIImage(named: firstImage), for: .normal)
                        self.setNeedsDisplay()
        }
        )}
    public func ButtonDisableAnimation(titleName: String, firstImage: String, secondImage: String) {
        UIView.animate(withDuration: 0.4,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
                        self.layer.frame.size = CGSize(width: 70.0, height: 44.0)
                        self.setTitle("", for: .normal)
                        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
                        self.setImage(UIImage(named: secondImage), for: .normal)
                        self.layer.backgroundColor = UIColor.white.cgColor
                        
        }
        )}
}
