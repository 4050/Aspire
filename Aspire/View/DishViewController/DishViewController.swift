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
    
    public var imageArray: [UIImage] = [#imageLiteral(resourceName: "martin-widenka-tkfRSPt-jdk-unsplash 3"), #imageLiteral(resourceName: "martin-widenka-tkfRSPt-jdk-unsplash 3"), #imageLiteral(resourceName: "martin-widenka-tkfRSPt-jdk-unsplash 3")]
    public var reuseIdentifier = "CollectionViewCelll"
    public var colors: [UIColor] = [UIColor.blue, UIColor.green, UIColor.red]
    
    private var cellScale: CGFloat = 0.6
    public var collectionViewCellSize: CGFloat = 224
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let screenSize = UIScreen.main.bounds.size
        let cellWidth = floor(screenSize.width * cellScale)
        let cellHeight = floor(screenSize.height * cellScale)
        let insetX = (view.bounds.width - cellWidth) / 2.0
        //let insetY = (view.bounds.height - cellHeight) / 2.0
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        collectionView.contentInset = UIEdgeInsets(top: 0, left: insetX, bottom: 0, right: insetX)
        
        //collectionView.register(UINib(nibName: "DishCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
        
        collectionView.dataSource = self
    }
}
