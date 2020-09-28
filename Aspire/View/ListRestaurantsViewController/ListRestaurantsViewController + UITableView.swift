//
//  ListRestaurantViewController + UITableView.swift
//  Aspire
//
//  Created by Stanislav on 13.09.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

extension ListRestaurantsViewController {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantTableViewCell
        cell.ImageViewCell.image = UIImage(named: restaurantImage)
        cell.nameLabel.text = restaurantName[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantName.count // your number of cells here
    }
    
}
