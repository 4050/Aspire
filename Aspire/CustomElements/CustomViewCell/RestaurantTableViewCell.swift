//
//  RestaurantTableViewCell.swift
//  Aspire
//
//  Created by Stanislav on 05.07.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

@IBDesignable class RestaurantTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageViewCell: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var backgroundViewCell: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCustomViewCell()
        setupCell()
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setupCustomViewCell() {
        backgroundViewCell.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        backgroundViewCell.layer.cornerRadius = 10
        backgroundViewCell.layer.masksToBounds = false
        backgroundViewCell.layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        backgroundViewCell.layer.shadowOpacity = 0.3
        backgroundViewCell.layer.shadowOffset = CGSize(width: 0, height: 2)
        backgroundViewCell.layer.shadowRadius = 2
        backgroundViewCell.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        backgroundViewCell.layer.borderWidth = 0.1
    }
    
    func setupCell() {
        ImageViewCell.layer.cornerRadius = 10
        ImageViewCell.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
}
