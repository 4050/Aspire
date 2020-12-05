//
//  Cell1TableViewCell.swift
//  Aspire
//
//  Created by Stanislav on 05.12.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class Cell4TableViewCell: UITableViewCell, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var timeTF: UITextField!
    public var picker = UIPickerView()
    
    public var time: [String] = ["Как можно скорее", "Через 1 час", "Через 2 часа", "Через 3 часа"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        picker.delegate = self
        picker.dataSource = self
        
        timeTF.inputView = picker
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return time.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return time[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        timeTF.text = time[row]
        timeTF.endEditing(false)
    }
    
}
