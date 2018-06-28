//
//  GradientView.swift
//  Smack
//
//  Created by Andrei Batinas on 27/06/2018.
//  Copyright © 2018 Jonny B. All rights reserved.
//

import UIKit

// IBDesignable lets this class know that are able to render inside the storyboard
@IBDesignable
class GradientView: UIView {
    
    // IBInspectable can be change inside the storyboard
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1)  {
        didSet {
            // triggers a layout update
            self.setNeedsLayout()
        }
    }

    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            // triggers a layout update
            self.setNeedsLayout()
        }
    }
    
    // Called when topColor || bottomColor are changed
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        /*
            GRADIENT POINTS
         
               (0, 0)----------------------------------------(1, 0)
                    |                                        |
                    |                                        |
                    |                                        |
                    |                                        |
                    |                                        |
                    |                                        |
                    |                                        |
                    |                                        |
               (0, 1)----------------------------------------(1, 1)
         
         FOR top -> Bottom gradient START POINT = CGPoint(x: 0.5, y: 0) END POINT CGPoint(x: 0.5  y: 1)
        */
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
