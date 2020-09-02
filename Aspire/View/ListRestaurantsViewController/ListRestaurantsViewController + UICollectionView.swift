//
//  ListRestaurantsViewController + UIScrollView.swift
//  Aspire
//
//  Created by Stanislav on 18.08.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//
import UIKit

extension ListRestaurantsViewController {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CustomCollectionViewCell
        cell.imageView.image = imageArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indextPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
    }
    
   func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        pageControll.currentPage = Int(scrollView.contentOffset.x + 6) / Int(scrollView.frame.width)
    }  
}

