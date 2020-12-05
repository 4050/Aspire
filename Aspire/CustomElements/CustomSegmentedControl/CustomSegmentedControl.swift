//
//  Custom.swift
//  Aspire
//
//  Created by Stanislav on 26.11.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class CustomSegmentedControl: UISegmentedControl {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSegmentedControl()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupSegmentedControl()
    }
    
    override func awakeFromNib() {
        setupSegmentedControl()
    }
    
    func setupSegmentedControl() {
        backgroundColor = .white
        setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
        setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        
    }

}
