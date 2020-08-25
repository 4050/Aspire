//
//  CustomPageControl.swift
//  Aspire
//
//  Created by Stanislav on 18.08.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import UIKit

class CustomPageControl: UIPageControl {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupPageControl()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupPageControl()
    }
    
//    override func prepareForInterfaceBuilder() {
//         setupPageControl()
//     }
    
    override func layoutSubviews() {
           super.layoutSubviews()
           setupPageControl()
       }
       
    func setupPageControl() {
        
        guard !subviews.isEmpty else { return }
        
        let spacing: CGFloat = 3
        let width: CGFloat = 17
        let height = spacing
        var total: CGFloat = 0
        
        for view in subviews {
            view.layer.cornerRadius = 2
            view.frame = CGRect(x: total, y: frame.size.height / 2 - height / 2, width: width, height: height)
            total += width + spacing
        }
        
        total -= spacing
        frame.origin.x = frame.origin.x + frame.size.width / 2 - total / 2
        frame.size.width = total
    }
}
