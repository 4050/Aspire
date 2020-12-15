//
//  Cell1TableViewCell.swift
//  Aspire
//
//  Created by Stanislav on 05.12.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class Cell1TableViewCell: UITableViewCell, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var cell: Cell1TableViewCell?
    var orderViewController: OrderViewController?
    
    public var product: [String?] =  ["Блюдо3", "Блюдо3"]
    public var products: [Dish?] = []
    public var imageMiniDish: [String?] = ["food2.png", "food3.png"]
    
    private var reuseIdentifierTableViewCell = "MiniDishTableViewCell"

    @IBOutlet weak var tableViewCell1: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "MiniDishTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierTableViewCell)
        print(products)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierTableViewCell, for: indexPath) as! MiniDishTableViewCell
        cell.foodNameLabel.text = products[indexPath.row]?.dishName
        cell.imageViewCell?.image = UIImage(named: (products[indexPath.row]?.dishImage)!)
        cell.counter = (products[indexPath.row]?.dishAmount)!
        cell.labelCount.text = String((products[indexPath.row]?.dishAmount)!)
        cell.delegate = self
        cell.minusButton.tag = indexPath.row
        cell.plusButton.tag = indexPath.row
        return cell
    }
}

extension Cell1TableViewCell: MiniDishTableViewCellProtocol {
    
    func didTapPlusButton(cell: MiniDishTableViewCell) {
        cell.buttonEnableAnimation()
       // if number == 0 {
       //     buttonAppearance(button: //shoppingBasketButton )
       // }
    }
    
    func didTapMinusButton(cell: MiniDishTableViewCell) {
        cell.buttonDisableAnimation()
      // if number > 0 && number == 1 {
      //     buttonHidden(button: shoppingBasketButton )
      // }
    }
}
