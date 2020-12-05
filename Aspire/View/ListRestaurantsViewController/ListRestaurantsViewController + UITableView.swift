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
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierTableViewCell, for: indexPath) as! RestaurantTableViewCell
        cell.ImageViewCell.image = UIImage(named: restaurantImage)
        cell.nameLabel.text = restaurantName[indexPath.row]
        cell.delegate = self
        cell.likeButton.tag = indexPath.row
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantName.count // your number of cells here
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "RestaurantMenu", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "RestaurantMenuView") as UIViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
