//
//  RestaurantTableViewCell.swift
//  Aspire
//
//  Created by Stanislav on 05.07.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

protocol RestaurantTableViewCellLikeButton {
    func didTapLikeButton(cell: RestaurantTableViewCell)
}

class RestaurantTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageViewCell: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var backgroundViewCell: UIView!
    @IBOutlet weak var likeButton: UIButton!
    
    var delegate: RestaurantTableViewCellLikeButton?
    var checkRatingButton: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCustomViewCell()
        setupImageViewCell()
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @IBAction func likeButtonTap(_ sender: UIButton) {
        print("tap")
        delegate?.didTapLikeButton(cell: self)
    }

    func ratingButton() {
        if checkRatingButton == false {
            likeButton.setBackgroundImage(UIImage(named: "fullLike.png"), for: .normal)
            checkRatingButton = true
        }
        else
        {
            likeButton.setBackgroundImage(UIImage(named: "emptyLike.png"), for: .normal)
            checkRatingButton = false
        }
        print("RatingButton: tap")
    }
    
    func setupCustomViewCell() {
       backgroundViewCell.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
       backgroundViewCell.layer.cornerRadius = 12
       backgroundViewCell.layer.masksToBounds = false
       backgroundViewCell.layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
       backgroundViewCell.layer.shadowOpacity = 1
       backgroundViewCell.layer.shadowOffset = CGSize(width: 0, height: 0)
       backgroundViewCell.layer.shadowRadius = 5
       backgroundViewCell.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
       backgroundViewCell.layer.borderWidth = 0.1
    }
    
    func setupImageViewCell() {
        ImageViewCell.layer.cornerRadius = 12
        ImageViewCell.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
    
    func setupCell() {
        layer.masksToBounds = false
        layer.cornerRadius = 12
        layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowRadius = 5
        layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        layer.borderWidth = 0.1
        separatorInset = UIEdgeInsets.zero
        layoutMargins = UIEdgeInsets.zero
    }
}
