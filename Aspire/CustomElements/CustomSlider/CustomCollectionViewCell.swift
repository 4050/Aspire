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
          layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
          layer.cornerRadius = 12
          layer.masksToBounds = false
          layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
          layer.shadowOpacity = 0.5
          layer.shadowOffset = CGSize(width: 0, height: 2)
          layer.shadowRadius = 2
          layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
          layer.borderWidth = 0
      }
      
      func setupCell() {
          imageView.layer.cornerRadius = 12
          //imageView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
      }
    
}
