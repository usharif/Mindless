//
//  ViewController.swift
//  Mindless
//
//  Created by Umair Sharif on 10/5/16.
//  Copyright © 2016 usharif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        circleViewFactory(number: 35)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func circleViewFactory(number: Int) {
        var curr = 0
        while curr < number {
            let randomDimension = arc4random_uniform(100)
            let circle = CircleView(frame: CGRect(x: CGFloat(arc4random_uniform(UInt32(self.view.bounds.width))), y: CGFloat(arc4random_uniform(UInt32(self.view.bounds.height))), width: CGFloat(randomDimension), height: CGFloat(randomDimension)))
            circle.setColor(color: circle.getRandomColor())
            circle.backgroundColor = UIColor.clear
            self.view.addSubview(circle)
            curr += 1
        }
    }

}

