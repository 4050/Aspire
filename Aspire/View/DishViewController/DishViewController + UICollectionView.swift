//
//  DishViewController + UICollectionView.swift
//  Aspire
//
//  Created by Stanislav on 01.10.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

extension DishViewController {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! DishCollectionViewCell
        cell.imageView.image = imageArray[indexPath.row]
        //cell.backgroundColor = colors[indexPath.row]
        
        return cell
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let layout = self.collectionView?.collectionViewLayout as! UICollectionViewFlowLayout
        let cellWidthIncludingSpacing = layout.itemSize.width + layout.minimumLineSpacing
        
        var offset = targetContentOffset.pointee
        let index = (offset.x + scrollView.contentInset.left) / cellWidthIncludingSpacing
        let roundedIndex = round(index)
        
        offset = CGPoint(x: roundedIndex * cellWidthIncludingSpacing - scrollView.contentInset.left, y: scrollView.contentInset.top)
        
        targetContentOffset.pointee = offset
    }
    
   // func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt //indextPath: IndexPath) -> CGSize {
   //     return CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
   // }
   //
   // func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt //section: Int) -> UIEdgeInsets {
   //     return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
   //
   // }
   //
   // func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, //minimumLineSpacingForSectionAt section: Int) -> CGFloat {
   //     return 0
   // }
   //
   // func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, //minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
   //     return 0
   // }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        //pageControll.currentPage = Int(scrollView.contentOffset.x + 50) / Int(scrollView.frame.width)
    }
}
