//
//  CustomCollectionViewCell.swift
//  Aspire
//
//  Created by Stanislav on 22.08.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
          super.awakeFromNib()
          setupCustomViewCell()
          setupCell()
      }
      
      func setupCustomViewCell() {
          layer.cornerRadius = 12
          layer.masksToBounds = false
          layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
          layer.shadowOpacity = 0.3
          layer.shadowOffset = CGSize(width: 1, height: 1)
          layer.shadowRadius = 5
          layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
          layer.borderWidth = 0
          clipsToBounds = true
      }
      
      func setupCell() {
          imageView.layer.cornerRadius = 12
      }
    
}
