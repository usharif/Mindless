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
    }
    
    func setColor(color: UIColor) -> Void {
        self.color = color
    }
    
    func getRandomColor() -> UIColor{
        let randomRed:CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let randomGreen:CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let randomBlue:CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }

}
