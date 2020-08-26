//
//  ListRestaurantsViewController.swift
//  Aspire
//
//  Created by Stanislav on 05.07.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit


struct ButtonPosition {
    var buttonXPosition: [CGFloat?]?
}

class ListRestaurantsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var button1: CustomListRestaurantsButton!
    @IBOutlet weak var button2: CustomListRestaurantsButton!
    @IBOutlet weak var button3: CustomListRestaurantsButton!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var pageControll: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var scrollView: UIScrollView!
    
    private var buttons: [CustomListRestaurantsButton] = []
    private var positionButton = ButtonPosition()
    private var checkRatingButton: Bool = false
    private let screenHeight = UIScreen.main.bounds.height
    
    public let countCell = 1
    public let reuseIdentifier = "CollectionViewCell"
    public var imageArrayAd = ["ad1","ad2"]
    public var imageArray: [UIImage] = [#imageLiteral(resourceName: "ad2"), #imageLiteral(resourceName: "ad1")]
    public var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    let restaurantName = ["Restaurant", "Pepe`s", "Max"]
    let restaurantImage = "rest1.png"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        buttons = [button1, button2, button3]
        positionButton.buttonXPosition = [button1.frame.origin.x, button2.frame.origin.x, button3.frame.origin.x]
        collectionView.register(UINib(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
        pageControll.numberOfPages = imageArray.count
        pageControll.currentPage = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {

    }
    
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
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        NSLog("Table view scroll detected at offset: %f", scrollView.contentOffset.y)

    }
    
    //MARK: Rating Button
    @IBAction func ratingButton(_ button: UIButton) {
        if checkRatingButton == false {
            button.setBackgroundImage(UIImage(named: "fullLike.png"), for: .normal)
            checkRatingButton = true
        }
        else
        {
            button.setBackgroundImage(UIImage(named: "emptyLike.png"), for: .normal)
            checkRatingButton = false
        }
        print("RatingButton: tap")
    }
    
    
    func restartButtonPosition() {
        for button in buttons {
            animationDisablePositionButton(button: button, positionButton: CGFloat(positionButton.buttonXPosition!.count))
        }
    }
    
    //MARK: Sort Button
    @IBAction func buttonClick(_ selectButton: CustomListRestaurantsButton) {
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
                default: ()
                break;
                }
            }
        }
        
        switch selectButton.tag {
        case 1:
            selectButton.ButtonEnableAnimation(titleName: "Популярное", firstImage: "fingerLike", secondImage: "like-black")
            animationEnablePositionButton(button: button2, x: 81)
            animationEnablePositionButton(button: button3, x: 81)
            break;
        case 2:
            selectButton.ButtonEnableAnimation(titleName: "Новинки", firstImage: "new-white", secondImage: "new-black")
            animationEnablePositionButton(button: button3, x: 81)
            break;
        case 3:
            selectButton.ButtonEnableAnimation(titleName: "Скидки", firstImage: "sale-white", secondImage: "sale-black")
            break;
        default: ()
        break;
        }
    }
}

extension ListRestaurantsViewController {
    func animationEnablePositionButton(button: CustomListRestaurantsButton, x: CGFloat) {
        UIView.animate(withDuration: 0.35,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
                        button.transform = CGAffineTransform(translationX: button.transform.tx + x, y: button.transform.ty)
        })
    }
    
    func animationDisablePositionButton(button: CustomListRestaurantsButton, positionButton: CGFloat) {
        UIView.animate(withDuration: 0.35,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
                        button.transform = CGAffineTransform(translationX: positionButton, y: button.transform.ty)
        })
    }
}



