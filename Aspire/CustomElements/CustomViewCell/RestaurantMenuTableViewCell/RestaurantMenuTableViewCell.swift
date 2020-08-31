//
//  RestaurantMenuTableViewCell.swift
//  Aspire
//
//  Created by Stanislav on 26.08.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class RestaurantMenuTableViewCell: UITableViewCell {
    @IBOutlet weak var imageViewCell: UIImageView!
    @IBOutlet weak var viewCell: UIView!
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var dishDescriptionLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCustomViewCell()
        //setupImageViewCell()
        //setupCell()
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func setupCustomViewCell() {
        viewCell.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        viewCell.layer.cornerRadius = 12
        viewCell.layer.masksToBounds = false
        viewCell.layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        viewCell.layer.shadowOpacity = 0.2
        viewCell.layer.shadowOffset = CGSize(width: 0, height: 3)
        //viewCell.layer.shouldRasterize = true
        viewCell.layer.shadowRadius = 5
        viewCell.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        viewCell.layer.borderWidth = 0.0
    }
    
    func setupImageViewCell() {
       // imageViewCell.layer.masksToBounds = false
        imageViewCell.layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        imageViewCell.layer.shadowOpacity = 1
        imageViewCell.layer.shadowOffset = CGSize(width: 0, height: 0)
        imageViewCell.layer.shadowRadius = 10
        imageViewCell.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        imageViewCell.layer.borderWidth = 0.0
    }
    
    
}
