//
//  UIColor-Extension.swift
//  battery-hub
//
//  Created by Yusuf Çınar on 29.01.2019.
//  Copyright © 2019 Yusuf Çınar. All rights reserved.
//

import UIKit

extension UIColor {
    
    static let batteryColor : UIColor = {
        return  UIColor.rgb(red: 17, green: 154, blue: 237)
    }()
    
    static func rgb(red :  CGFloat , green :  CGFloat , blue : CGFloat) -> UIColor {
        
        return  UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1)
    }
    static var random: UIColor {
        let r:CGFloat  = .random(in: 0 ... 1)
        let g:CGFloat  = .random(in: 0 ... 1)
        let b:CGFloat  = .random(in: 0 ... 1)
        return UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    class func randomUserBackgroundColor() -> UIColor? {
        
        let backgroundColorArray = [UIColor(red:233/255.0, green:158/255.0, blue:66/255.0,  alpha:1),
                                    UIColor(red:236/255.0, green:105/255.0, blue:31/255.0,  alpha:1),
                                    UIColor(red:244/255.0, green:151/255.0, blue:21/255.0,  alpha:1),
                                    UIColor(red:238/255.0, green:138/255.0, blue:38/255.0,  alpha:1),
                                    UIColor(red:244/255.0, green:227/255.0, blue:80/255.0,  alpha:1),
                                    UIColor(red:243/255.0, green:191/255.0, blue:48/255.0,  alpha:1),
                                    UIColor(red:224/255.0, green:91/255.0, blue:50/255.0,  alpha:1),
        ]
        
        let randomColor = backgroundColorArray.randomElement()
        return randomColor
    }
}
