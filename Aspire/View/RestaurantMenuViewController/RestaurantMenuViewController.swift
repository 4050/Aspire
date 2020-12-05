//
//  RestaurantMenuViewController.swift
//  Aspire
//
//  Created by Stanislav on 30.08.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit


class RestaurantMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var button1: CustomRestaurantMenuButton!
    @IBOutlet weak var button2: CustomRestaurantMenuButton!
    @IBOutlet weak var button3: CustomRestaurantMenuButton!
    @IBOutlet weak var button4: CustomRestaurantMenuButton!
    @IBOutlet weak var pageControll: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    public var product = ["Блюдо1", "Блюдо1", "Блюдо1", "Блюдо1", "Блюдо1"]
    public var image = ["food2.png", "food3.png", "food2.png", "food3.png", "food2.png"]
    public var productCellId = "TestRestaurantMenuTableViewCell"
    public let segueIdentifier = "DishView"
    public var rest = RestaurantMenuTableViewCell()
    public var reuseIdentifier = "CollectionViewCell"
    public var reuseIdentifierTableViewCell = "RestaurantTableViewCell"
    public var imageArray: [UIImage] = [#imageLiteral(resourceName: "ad2"), #imageLiteral(resourceName: "ad2"), #imageLiteral(resourceName: "ad2")]
    
    var number: Int = 0
    var sum: Int = 0
    
    private var buttons: [CustomRestaurantMenuButton] = []
    private var positionButton = ButtonPosition()
    private var restaurantMenuTableViewCell = RestaurantMenuTableViewCell()
    
    let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorColor = UIColor.clear
        buttons = [button1, button2, button3, button4]
        positionButton.buttonXPosition = [button1.frame.origin.x, button2.frame.origin.x, button3.frame.origin.x, button4.frame.origin.x]
        collectionView.register(UINib(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
        
        pageControll.numberOfPages = imageArray.count
        pageControll.currentPage = 0
        
        button.bounds = CGRect(x: 0, y: 0, width: 420, height: 77)
        button.center = CGPoint(x: view.bounds.width / 2, y: view.bounds.height + 40)
        button.layer.cornerRadius = 30
        button.backgroundColor = #colorLiteral(red: 0.9874770045, green: 0.2656408846, blue: 0.2610104084, alpha: 1)
        //button.setTitle("Корзина: \(number) на сумму \(sum) грн", for: .normal)
        self.view.addSubview(button)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        //setFirstButton()
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
                    button.ButtonDisableAnimation(titleName: "Все меню", firstImage: "allMenu-white", secondImage: "allMenu-black")
                    break;
                case 2:
                    button.ButtonDisableAnimation(titleName: "Закуски", firstImage: "coldFood-white", secondImage: "coldFood-black")
                    break;
                case 3:
                    button.ButtonDisableAnimation(titleName: "Горячее", firstImage: "hotFood-white", secondImage: "hotFood-black")
                    break;
                case 4:
                    button.ButtonDisableAnimation(titleName: "Напитки", firstImage: "drinks-white", secondImage: "drinks-black")
                    break;
                default: ()
                    break;
                }
            }
        }
        
        switch selectButton.tag {
        case 1:
            selectButton.ButtonEnableAnimation(titleName: "Все меню", firstImage: "allMenu-white", secondImage: "allMenu-black")
            animationEnablePositionButton(button: button2, x: 65)
            animationEnablePositionButton(button: button3, x: 65)
            animationEnablePositionButton(button: button4, x: 65)
            break;
        case 2:
            selectButton.ButtonEnableAnimation(titleName: "Закуски", firstImage: "coldFood-white", secondImage: "coldFood-black")
            animationEnablePositionButton(button: button3, x: 65)
            animationEnablePositionButton(button: button4, x: 65)
            break;
        case 3:
            selectButton.ButtonEnableAnimation(titleName: "Горячее", firstImage: "hotFood-white", secondImage: "hotFood-black")
            animationEnablePositionButton(button: button4, x: 65)
            break;
        case 4:
            selectButton.ButtonEnableAnimation(titleName: "Напитки", firstImage: "drinks-white", secondImage: "drinks-black")
            break;
        default: ()
            break;
        }
    }
    
    func setFirstButton() {
        if button1.isSelected != true {
            button1.isSelected = true
            button1.ButtonEnableAnimation(titleName: "Все меню", firstImage: "allMenu-white", secondImage: "allMenu-black")
            animationEnablePositionButton(button: button2, x: 65)
            animationEnablePositionButton(button: button3, x: 65)
            animationEnablePositionButton(button: button4, x: 65)
        }
    }
}

extension RestaurantMenuViewController {
    func animationEnablePositionButton(button: CustomRestaurantMenuButton, x: CGFloat) {
        UIView.animate(withDuration: 0.32,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
                        button.transform = CGAffineTransform(translationX: button.transform.tx + x, y: button.transform.ty)
                       })
    }
    
    func animationDisablePositionButton(button: CustomRestaurantMenuButton, positionButton: CGFloat) {
        UIView.animate(withDuration: 0.32,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
                        button.transform = CGAffineTransform(translationX: positionButton, y: button.transform.ty)
                       })
    }
    
    func buttonAppearance(button: UIButton) {
        UIView.animate(withDuration: 0.32,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
                        button.transform = CGAffineTransform(translationX: button.transform.tx, y: button.transform.ty - 77)
                       })
    }
    
    func buttonHidden(button: UIButton) {
        UIView.animate(withDuration: 0.32,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
                        button.transform = CGAffineTransform(translationX: button.transform.tx, y: button.transform.ty + 77)
                       })
    }
    
}

extension RestaurantMenuViewController: RestaurantMenuTableViewCellProtocol {
    func didTapPlusButton(cell: RestaurantMenuTableViewCell) {
        cell.buttonEnableAnimation()
        if number == 0 {
            buttonAppearance(button: button)
        }
        sum += 3000
        number += 1
        button.setTitle("Корзина: \(number) на сумму \(sum) грн", for: .normal)
        
    }
    
    func didTapMinusButton(cell: RestaurantMenuTableViewCell) {
        cell.buttonDisableAnimation()
        if number > 0 && number == 1 {
            buttonHidden(button: button)
        }
        sum -= 3000
        number -= 1
        button.setTitle("Корзина: \(number) на сумму \(sum) грн", for: .normal)
    }
}

