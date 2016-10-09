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
        
        addCircleView(s: "Work")
        addCircleView(s: "project")
        addCircleView(s: "relationship")
        addCircleView(s: "car replacement issue")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addCircleView(s: String) {
        let randomDimension = arc4random_uniform(100)
        let circle = CircleView(frame: CGRect(x: CGFloat(arc4random_uniform(UInt32(self.view.bounds.width/1.5))), y: CGFloat(arc4random_uniform(UInt32(self.view.bounds.height/1.5))), width: CGFloat(randomDimension), height: CGFloat(randomDimension)))
        circle.setColor(color: circle.getRandomColor())
        circle.backgroundColor = UIColor.clear
        self.view.addSubview(circle)
        
        let text = UILabel(frame: circle.frame)
        text.text = s
        text.adjustsFontSizeToFitWidth = true
        text.minimumScaleFactor = 0.05
        text.numberOfLines = 1
        text.textAlignment = .center
        text.center = circle.center
        text.backgroundColor = UIColor.clear
        self.view.addSubview(text)
    }

}

