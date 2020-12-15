//
//  DishModel.swift
//  Aspire
//
//  Created by Stanislav on 09.12.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import Foundation

struct Dish: Hashable {

    var dishName: String?
    var dishImage: String?
    var dishAmount: Int?
    
    static let dishId = [ 1, 2, 3, 4 ]
    static let dishNames = [ "Блюда1", "Блюда2", "Блюда3", "Блюда4" ]
    static let dishImages = ["food2.png", "food3.png", "food2.png", "food3.png", "food2.png"]
    
    init () {
        
    }
    
    init(dishName: String, dishImage: String, dishAmount: Int) {
        self.dishName = dishName
        self.dishImage = dishImage
        self.dishAmount = dishAmount
    }
    
   // static func getDish() -> [Dish] {
   //     var dishs = [Dish]()
   //     for (dishName, dishImage) in zip(dishNames, dishImages) {
   //         dishs.append(Dish(dishName: dishName, dishImage: dishImage))
   //     }
   //     return dishs
   // }
}

struct CartDish {
    var dishID: Int?
    var amount: Int?
}
