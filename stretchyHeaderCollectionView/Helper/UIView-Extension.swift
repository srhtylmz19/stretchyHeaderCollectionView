//
//  UIView-Extension.swift
//  battery-hub
//
//  Created by Yusuf Çınar on 29.01.2019.
//  Copyright © 2019 Yusuf Çınar. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    
    func anchor(top : NSLayoutYAxisAnchor?  , leading : NSLayoutXAxisAnchor? , bottom :  NSLayoutYAxisAnchor? , trailing : NSLayoutXAxisAnchor?, paddingTop :  CGFloat , paddingleft : CGFloat , paddingBottom :  CGFloat , paddingRight : CGFloat , width : CGFloat  , height : CGFloat, centerX : NSLayoutXAxisAnchor?, centerY : NSLayoutYAxisAnchor?)  {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let left = leading {
            self.leadingAnchor.constraint(equalTo: left, constant: paddingleft).isActive = true
        }
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        if let right = trailing {
            self.trailingAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        if width != 0  {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if height != 0 {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        if let centerX = centerX {
            self.centerXAnchor.constraint(equalTo: centerX).isActive = true
        }
        if let centerY = centerY {
            self.centerYAnchor.constraint(equalTo: centerY).isActive = true
        }
    }
    // Shadow
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: -1, height: 1)
        layer.shadowRadius = 1
        
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius
        
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    

}

