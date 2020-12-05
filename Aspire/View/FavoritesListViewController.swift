//
//  FavoritesListViewController.swift
//  Aspire
//
//  Created by Stanislav on 20.11.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class FavoritesListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    public let restaurantImage = "rest1.png"
    public let favoritesRestaurantName = "Restaurant"
    public var reuseIdentifierRestaurantTableViewCell = "RestaurantTableViewCell"
    public var reuseIdentifierRestaurantMenuTableViewCell = "RestaurantMenuTableViewCell"
    
    public var product = ["Блюдо1"]
    public var image = ["food2.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        tableView.register(UINib(nibName: "RestaurantTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierRestaurantTableViewCell)
        tableView.register(UINib(nibName: "RestaurantMenuTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierRestaurantMenuTableViewCell)
    }
    
    @IBAction func seg(sender: AnyObject) {
        switch(segmentedControl.selectedSegmentIndex)
        {
        case 0:
            tableView.reloadData()
            break
        case 1:
            tableView.reloadData()
            break
        default:
            break
        }
    }
}

extension FavoritesListViewController: RestaurantMenuTableViewCellProtocol, RestaurantTableViewCellLikeButton {
    func didTapPlusButton(cell: RestaurantMenuTableViewCell) {
        cell.buttonEnableAnimation()
    }
    
    func didTapMinusButton(cell: RestaurantMenuTableViewCell) {
        cell.buttonDisableAnimation()
    }
    
    func didTapLikeButton(cell: RestaurantTableViewCell) {
        cell.ratingButton()
    }
}
