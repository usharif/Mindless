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
        let circle = CircleView(frame: CGRect(x: self.view.bounds.width/2, y: self.view.bounds.height/2, width: 50, height: 50))
        circle.setColor(color: UIColor.green)
        circle.backgroundColor = UIColor.white
        self.view.addSubview(circle)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

