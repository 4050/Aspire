//
//  Cell2TableViewCell.swift
//  Aspire
//
//  Created by Stanislav on 06.12.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class Cell2TableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelCount: UILabel!
    @IBOutlet weak var plusButtonCount: UIButton!
    @IBOutlet weak var minusButtonCount: UIButton!
    
    private var counter: Int = 0

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func plusButtonTap(_ sender: UIButton) {
        print("123")
        buttonEnableAnimation()
    }
    
    @IBAction func minusButtonTap(_ sender: UIButton) {
        buttonDisableAnimation()
    }
    
    func buttonEnableAnimation() {
        minusButtonCount.isUserInteractionEnabled  = true
        counter += 1
        labelCount.text = String(self.counter)
        if counter > 1 {
            minusButtonCount.isHidden = false
            labelCount.isHidden = false
            labelCount.text = String(self.counter)
        } else {
            //StepperEnableAnimation()
        }
    }
    
    func buttonDisableAnimation() {
        if counter > 0 {
            counter -= 1
            labelCount.text = String(counter)
        } else {
            minusButtonCount.isUserInteractionEnabled  = false
        }
    }
    

}
