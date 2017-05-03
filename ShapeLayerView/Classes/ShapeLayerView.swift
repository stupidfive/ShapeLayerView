//
//  ShapeLayerView.swift
//  ShapeLayerView
//
//  Created by George Wu on 5/1/17.
//  Copyright © 2017 George Wu. All rights reserved.
//

import UIKit

public class ShapeLayerView: UIView {
    
    var draw: (CGRect) -> (CGPath)
    
    public init(shape: (_ shapeLayer: CAShapeLayer) -> (), draw: @escaping (_ bounds: CGRect) -> (CGPath)) {
        self.draw = draw
        super.init(frame: .zero)
        shape(layer as! CAShapeLayer)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override class var layerClass: AnyClass {
        get {
            return CAShapeLayer.self
        }
    }
    
    public override func layoutSubviews() {
        print("\(bounds)")
        
        let shapeLayer = layer as! CAShapeLayer
        let path = draw(bounds)
        shapeLayer.path = path
    }

}
