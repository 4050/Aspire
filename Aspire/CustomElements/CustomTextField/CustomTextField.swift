//
//  CustomTextField.swift
//  Aspire
//
//  Created by Stanislav on 01.07.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    var floatingLabel: UILabel = UILabel(frame: CGRect.zero) // Label
    var floatingLabelHeight: CGFloat = 20 // Default height
    @IBInspectable
    var _placeholder: String? // we cannot override 'placeholder'
    @IBInspectable
    var floatingLabelColor: UIColor = UIColor.black {
        didSet {
            self.floatingLabel.textColor = floatingLabelColor
            self.setNeedsDisplay()
        }
    }
    @IBInspectable
    var activeBorderColor: UIColor = UIColor.black
    @IBInspectable
    var floatingLabelFont: UIFont = UIFont.systemFont(ofSize: 18) {
        didSet {
            self.floatingLabel.font = self.floatingLabelFont
            self.font = self.floatingLabelFont
            self.setNeedsDisplay()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTextField()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self._placeholder = (self._placeholder != nil) ? self._placeholder : placeholder
        placeholder = self._placeholder
        self.addTarget(self, action: #selector(self.addFloatingLabel), for: .editingDidBegin)
        self.addTarget(self, action: #selector(self.removeFloatingLabel), for: .editingDidEnd)
        setupTextField()
    }
    
    @objc func addFloatingLabel() {
     self.placeholder = ""
    }
    
    @objc func removeFloatingLabel() {
        if self.text == "" {
            UIView.animate(withDuration: 0.13) {
                self.subviews.forEach{ $0.removeFromSuperview() }
                self.setNeedsDisplay()
            }
            self.placeholder = self._placeholder
        }
    }
    
   // override func prepareForInterfaceBuilder() {
   //     setupTextField()
   // }
    
    func setupTextField() {
        layer.cornerRadius = 25
        layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        layer.borderWidth = 1
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 35, dy: 7)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }
    
}
