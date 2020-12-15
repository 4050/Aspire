//
//  RestaurantMenuViewController + UITableView.swift
//  Aspire
//
//  Created by Stanislav on 20.09.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

extension RestaurantMenuViewController {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishId.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: productCellId, for: indexPath) as! RestaurantMenuTableViewCell
        cell.foodNameLabel.text = dishName[indexPath.row]
        cell.imageViewCell?.image = UIImage(named: dishImage[indexPath.row])
        cell.delegate = self
        cell.minusButton.tag = indexPath.row
        cell.plusButton.tag = indexPath.row
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }

}
