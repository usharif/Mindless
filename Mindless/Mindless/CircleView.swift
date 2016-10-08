//
//  CircleView.swift
//  Mindless
//
//  Created by Umair Sharif on 10/7/16.
//  Copyright © 2016 usharif. All rights reserved.
//

import UIKit

//@IBDesignable
class CircleView: UIView {
    var color: UIColor!
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        color.setFill()
        path.fill()
        
//        let path = UIBezierPath(ovalIn: CGRect(x: bounds.width/2, y: bounds.height/2, width: 66, height: 66))
//        UIColor.blue.setFill()
//        path.fill()
//        
//        let path2 = UIBezierPath(rect: CGRect(x: bounds.width/2, y: bounds.height/2, width: 40, height: -70))
//        UIColor.green.setFill()
//        path2.fill()

    }
    
    func setColor(color: UIColor) -> Void {
        self.color = color
    }
    
}
