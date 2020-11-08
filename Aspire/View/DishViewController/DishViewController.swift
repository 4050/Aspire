//
//  DishViewController.swift
//  Aspire
//
//  Created by Stanislav on 20.09.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class DishViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var labelCount: UILabel!
    @IBOutlet weak var plusButtonCount: UIButton!
    @IBOutlet weak var minusButtonCount: UIButton!
    
    public var imageArray: [UIImage] = [#imageLiteral(resourceName: "martin-widenka-tkfRSPt-jdk-unsplash 3"), #imageLiteral(resourceName: "martin-widenka-tkfRSPt-jdk-unsplash 3"), #imageLiteral(resourceName: "martin-widenka-tkfRSPt-jdk-unsplash 3")]
    public var reuseIdentifier = "CollectionViewCelll"
    public var colors: [UIColor] = [UIColor.blue, UIColor.green, UIColor.red]
    
    private var counter: Int = 0
    private var cellScale: CGFloat = 0.6
    public var collectionViewCellSize: CGFloat = 224
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let screenSize = UIScreen.main.bounds.size
        let cellWidth = floor(screenSize.width * cellScale)
        let cellHeight = floor(screenSize.height * cellScale)
        let insetX = (view.bounds.width - cellWidth) / 2.0
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        collectionView.contentInset = UIEdgeInsets(top: 0, left: insetX, bottom: 0, right: insetX)
        collectionView.dataSource = self
        //firstButtonDisable() 
    }
    
    @IBAction func plusButtonTap(_ sender: UIButton) {
        print("123")
        buttonEnableAnimation()
    }
    
    @IBAction func button(_ sender: Any) {
        print("print")
    }
    
    func buttonEnableAnimation() {
        counter += 1
        labelCount.text = String(self.counter)
        if counter > 1 {
            minusButtonCount.isHidden = false
            labelCount.isHidden = false
            labelCount.text = String(self.counter)
        } else {
            StepperEnableAnimation()
        }
    }
    
    func buttonDisableAnimation() {
        counter -= 1
        labelCount.text = String(counter)
        
        if counter == 0 {
            StepperDisableAnimation()
        }
    }
    
    func firstButtonDisable() {
        minusButtonCount.isHidden = true
        labelCount.isHidden = true
    }
}

extension DishViewController {
    
    public func StepperEnableAnimation() {
        UIView.animate(withDuration: 0.3,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
                        self.labelCount.isHidden = false
                        
                       })
        UIView.animate(withDuration: 0.35,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
                        self.minusButtonCount.isHidden = false
                        
                       })
        
    }
    
    public func StepperDisableAnimation() {
        UIView.animate(withDuration: 0.3,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
                        self.minusButtonCount.isHidden = true
                       })
        UIView.animate(withDuration: 0.35,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
                        self.labelCount.isHidden = true
                       })
    }
}
