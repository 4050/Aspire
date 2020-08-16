//
//  ViewController.swift
//  Aspire
//
//  Created by Stanislav on 01.07.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButton(_ sender: Any) {
        if let newViewController = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController {
            newViewController.modalTransitionStyle = .coverVertical
            newViewController.modalPresentationStyle = .overCurrentContext
            present(newViewController, animated: true, completion: nil)
        }
    }
    
    
    
}

