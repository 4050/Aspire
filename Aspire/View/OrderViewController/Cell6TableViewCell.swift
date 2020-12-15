//
//  Cell6TableViewCell.swift
//  Aspire
//
//  Created by Stanislav on 06.12.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class Cell6TableViewCell: UITableViewCell, UIPickerViewDelegate, UIPickerViewDataSource  {

    @IBOutlet weak var totalOrderAmount: UILabel!
    @IBOutlet weak var foodAmount: UILabel!
    @IBOutlet weak var paymentMethodTF: UITextField!
    
    public var paymentMethod: [String] = ["Карта", "Наличные"]
    
    public var picker = UIPickerView()

    override func awakeFromNib() {
        super.awakeFromNib()
        picker.delegate = self
        picker.dataSource = self
        
        paymentMethodTF.inputView = picker
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return paymentMethod.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return paymentMethod[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        paymentMethodTF.text = paymentMethod[row]
        paymentMethodTF.endEditing(false)
    }

}
