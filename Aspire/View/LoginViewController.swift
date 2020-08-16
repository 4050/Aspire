//
//  LoginViewController.swift
//  Aspire
//
//  Created by Stanislav on 02.07.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: CustomTextField!
    
    private var customTextField = CustomTextField()
    private var passwordShow: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginLabel.isHidden = true
        loginLabel.alpha = 0
        passwordLabel.alpha = 0
        passwordTextField.isSecureTextEntry = true
        
    }
    
    //MARK: TextField with floating placeholder
    @IBAction func loginTextFieldChangeBegin(_ sender: Any) {
        loginLabel.isHidden = false
        animationLabel(label: loginLabel)
        customTextField.addFloatingLabel()
    }
    
    @IBAction func loginTextFieldChangeEnd(_ sender: Any) {
        loginLabel.alpha = 0
        customTextField.removeFloatingLabel()
    }
    
    @IBAction func passwordTextFieldChangeBegin(_ sender: Any) {
        animationLabel(label: passwordLabel)
        customTextField.addFloatingLabel()
    }
    
    @IBAction func passwordTextFieldChangeEnd(_ sender: Any) {
        passwordLabel.alpha = 0
        customTextField.removeFloatingLabel()
    }
    
    @IBAction func passwordShow(_ sender: Any) {
            if(passwordShow == true) {
                passwordTextField.isSecureTextEntry = false
            } else {
                passwordTextField.isSecureTextEntry = true
            }
           passwordShow = !passwordShow
    }
    
}

extension LoginViewController {
    //MARK: Animation Label
    func animationLabel(label: UILabel) {
        UIView.animate(withDuration: 0.2,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
                        label.alpha = 1
        })
    }
}
