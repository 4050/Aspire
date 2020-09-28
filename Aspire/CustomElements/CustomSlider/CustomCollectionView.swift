//
//  CustomCollectionView.swift
//  Aspire
//
//  Created by Stanislav on 24.08.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class CustomCollectionView: UICollectionView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupCollectionView()
    }
    
    override func awakeFromNib() {
        setupCollectionView()
    }

    func setupCollectionView() {
        backgroundColor = UIColor.clear
        layer.cornerRadius = 12
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowOffset  = CGSize(width: 1, height: 1)
        layer.shadowRadius  = 5
        layer.shadowOpacity = 0.1
        clipsToBounds       = true
        layer.masksToBounds = false
    }
    
}
