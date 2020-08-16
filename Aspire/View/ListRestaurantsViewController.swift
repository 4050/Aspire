//
//  ListRestaurantsViewController.swift
//  Aspire
//
//  Created by Stanislav on 05.07.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit


struct ButtonPosition {
    var buttonXPosition: CGFloat?
    var buttonWidthConstrain: NSLayoutConstraint?
    //var buttonTrailingConstrain: NSLayoutConstraint?
}

class ListRestaurantsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var button1: CustomListRestaurantsButton!
    @IBOutlet weak var button2: CustomListRestaurantsButton!
    @IBOutlet weak var button3: CustomListRestaurantsButton!
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var button1Width: NSLayoutConstraint!
    @IBOutlet weak var button2Width: NSLayoutConstraint!
    @IBOutlet weak var button3Width: NSLayoutConstraint!
    
    
    @IBOutlet var buttons: [CustomListRestaurantsButton]!
    
    private var positionButton1 = ButtonPosition()
    private var positionButton2 = ButtonPosition()
    private var positionButton3 = ButtonPosition()
    
    private var checkRatingButton: Bool = false

    let restaurantName = ["Restaurant", "Pepe`s", "Max"]
    let restaurantImage = "bartolome.png"
    
    var button1isActive: Bool = false
    var button2isActive: Bool = false
    var button3isActive: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        positionButton1.buttonWidthConstrain = button1Width
        positionButton2.buttonWidthConstrain = button2Width
        positionButton3.buttonWidthConstrain = button3Width
        positionButton1.buttonXPosition = button1.frame.origin.x
        positionButton2.buttonXPosition = button2.frame.origin.x
        positionButton3.buttonXPosition = button3.frame.origin.x
        
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
    
    func buttonPosition() {
        button1.frame.origin.x = positionButton1.buttonXPosition ?? 0
        button2.frame.origin.x = positionButton2.buttonXPosition ?? 0
        button3.frame.origin.x = positionButton3.buttonXPosition ?? 0
    }
    
    func buttonActive() {
        for button in buttons {
            button.isUserInteractionEnabled = true
        }
    }
    
   @IBAction func buttonClick(_ button: CustomListRestaurantsButton){
       buttonPosition()
        switch button.tag {
          case 1:
                   button.ButtonEnableAnimation(titleName: "Популярное", firstImage: "fingerLike", secondImage: "like-black")
                  button2.transform = CGAffineTransform(translationX: button2.transform.tx + 81, y: button2.transform.ty)
               button3.transform = CGAffineTransform(translationX: button3.transform.tx + 81, y: button3.transform.ty)
                  break;
          case 2:
                   print("Button2: tap")
                   button.ButtonEnableAnimation(titleName: "Новинки", firstImage: "new-white", secondImage: "new-black")
                  break;
          case 3:
                  break;
          default: ()
                  break;
          }
    }
}


