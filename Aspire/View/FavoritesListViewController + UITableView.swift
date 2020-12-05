//
//  FavoritesListViewController + UITableView.swift
//  Aspire
//
//  Created by Stanislav on 20.11.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

extension FavoritesListViewController {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch (segmentedControl.selectedSegmentIndex) {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierRestaurantTableViewCell, for: indexPath) as! RestaurantTableViewCell
            cell.ImageViewCell.image = UIImage(named: restaurantImage)
            cell.nameLabel.text = favoritesRestaurantName
            cell.delegate = self
            cell.likeButton.tag = indexPath.row
            return cell
        case 1:
            let cell2 = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierRestaurantMenuTableViewCell, for: indexPath) as! RestaurantMenuTableViewCell
            cell2.foodNameLabel.text = product[indexPath.row]
            cell2.imageViewCell?.image = UIImage(named: image[indexPath.row])
            cell2.delegate = self
            cell2.minusButton.tag = indexPath.row
            cell2.plusButton.tag = indexPath.row
            return cell2
        default:
            break
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierRestaurantTableViewCell, for: indexPath) as! RestaurantTableViewCell
        let cell2 = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierRestaurantMenuTableViewCell, for: indexPath) as! RestaurantMenuTableViewCell
        cell.ImageViewCell.image = UIImage(named: restaurantImage)
        cell.nameLabel.text = favoritesRestaurantName
        cell.delegate = self
        cell.likeButton.tag = indexPath.row
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 // your number of cells here
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "RestaurantMenu", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "RestaurantMenuView") as UIViewController
        navigationController?.pushViewController(vc, animated: true)
    }

}

