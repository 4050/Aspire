//
//  RestaurantMenuViewController.swift
//  Aspire
//
//  Created by Stanislav on 30.08.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit


class RestaurantMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var button1: CustomRestaurantMenuButton!
    @IBOutlet weak var button2: CustomRestaurantMenuButton!
    @IBOutlet weak var button3: CustomRestaurantMenuButton!
    @IBOutlet weak var button4: CustomRestaurantMenuButton!
    
    
    private var product = ["Блюдо1", "Блюдо1", "Блюдо1", "Блюдо1", "Блюдо1"]
    private var image = ["food2.png", "food3.png", "food2.png", "food3.png", "food2.png"]
    private var buttons: [CustomRestaurantMenuButton] = []
    private var productCellId = "RestaurantMenuTableViewCell"
    private var positionButton = ButtonPosition()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib.init(nibName: productCellId, bundle: nil), forCellReuseIdentifier:  productCellId)
        tableView.separatorColor = UIColor.clear
        buttons = [button1, button2, button3, button4]
        positionButton.buttonXPosition = [button1.frame.origin.x, button2.frame.origin.x, button3.frame.origin.x, button4.frame.origin.x]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return product.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: productCellId, for: indexPath) as! RestaurantMenuTableViewCell
        cell.foodNameLabel.text = product[indexPath.row]
        cell.imageViewCell?.image = UIImage(named: image[indexPath.row])
        return cell
    }
    
    func restartButtonPosition() {
        for button in buttons {
            animationDisablePositionButton(button: button, positionButton: CGFloat(positionButton.buttonXPosition!.count))
        }
    }
    
    //MARK: Sort Button
    @IBAction func buttonClick(_ selectButton: CustomRestaurantMenuButton) {
        selectButton.isSelected = true
        restartButtonPosition()
        
        for button in buttons {
            if button.isSelected && button !== selectButton {
                button.isSelected = false
                switch button.tag {
                case 1:
                    button.ButtonDisableAnimation(titleName: "Популярное", firstImage: "fingerLike", secondImage: "like-black")
                    break;
                case 2:
                    button.ButtonDisableAnimation(titleName: "Популярное", firstImage: "new-white", secondImage: "new-black")
                    break;
                case 3:
                    button.ButtonDisableAnimation(titleName: "Скидки", firstImage: "sale-white", secondImage: "sale-black")
                    break;
                case 4:
                    button.ButtonDisableAnimation(titleName: "Скидки", firstImage: "sale-white", secondImage: "sale-black")
                    break;
                default: ()
                break;
                }
            }
        }
        
        switch selectButton.tag {
        case 1:
            selectButton.ButtonEnableAnimation(titleName: "Все меню", firstImage: "allMenu-white", secondImage: "like-black")
            animationEnablePositionButton(button: button2, x: 65)
            animationEnablePositionButton(button: button3, x: 65)
            animationEnablePositionButton(button: button4, x: 65)
            break;
        case 2:
            selectButton.ButtonEnableAnimation(titleName: "Закуски", firstImage: "new-white", secondImage: "new-black")
            animationEnablePositionButton(button: button3, x: 65)
            animationEnablePositionButton(button: button4, x: 65)
            break;
        case 3:
            selectButton.ButtonEnableAnimation(titleName: "Горячее", firstImage: "sale-white", secondImage: "sale-black")
            animationEnablePositionButton(button: button4, x: 65)
            break;
        case 4:
            selectButton.ButtonEnableAnimation(titleName: "Напитки", firstImage: "sale-white", secondImage: "sale-black")
            break;
        default: ()
        break;
        }
    }
}

extension RestaurantMenuViewController {
    func animationEnablePositionButton(button: CustomRestaurantMenuButton, x: CGFloat) {
        UIView.animate(withDuration: 0.35,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
                        button.transform = CGAffineTransform(translationX: button.transform.tx + x, y: button.transform.ty)
        })
    }
    
    func animationDisablePositionButton(button: CustomRestaurantMenuButton, positionButton: CGFloat) {
        UIView.animate(withDuration: 0.35,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
                        button.transform = CGAffineTransform(translationX: positionButton, y: button.transform.ty)
        })
    }
    
}
