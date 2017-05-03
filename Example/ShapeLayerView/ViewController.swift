//
//  ViewController.swift
//  ShapeLayerView
//
//  Created by GeorgeWu on 05/03/2017.
//  Copyright (c) 2017 GeorgeWu. All rights reserved.
//

import UIKit
import ShapeLayerView

class ViewController: UIViewController {
    
    lazy var redView: ShapeLayerView = {
        return ShapeLayerView(shape: { (shapeLayer) in
            shapeLayer.strokeColor = UIColor.blue.cgColor
            shapeLayer.fillColor = UIColor.yellow.cgColor
            shapeLayer.lineWidth = 2.0
        }) { (bounds) -> (CGPath) in
            let path = UIBezierPath(ovalIn: bounds)
            return path.cgPath
        }
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        redView.backgroundColor = UIColor.red
        view.addSubview(redView)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let oldFrame = self.redView.frame
        self.redView.frame = CGRect(x: 150 - oldFrame.origin.x, y: 150 - oldFrame.origin.y, width: 300 - oldFrame.size.width, height: 400 -  oldFrame.size.height)
    }

}

