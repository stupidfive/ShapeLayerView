# ShapeLayerView

A lightweight `UIView` that's
- Backed by a `CAShapeLayer`
- Redraw on bounds change

Drawing a simple graph such as a red dot or a rounded rectangle is easy and memory efficient with a few lines of code using `CAShapeLayer`. However, without the support for auto layout to `CALayer`, a lot of code must be written to make the layer appear at the right place and the right size. `ShapeLayerView` comes into play when you want to add a self-drawing graph to your view hierarchy.

## Installation

Add the following into your `Podfile`

```
pod 'ShapeLayerView', '~> 0.1.0`
```

and then run the following command

```ruby
$ pod install
```

## Usage

Create a red circle that fits into the view.

```swift
ShapeLayerView(shape: { (shapeLayer) in
    shapeLayer.fillColor = UIColor.red.cgColor
}) { (bounds) -> (CGPath) in
    let path = UIBezierPath(arcCenter: CGPoint(x: bounds.origin.x + bounds.size.width / 2, y: bounds.origin.y + bounds.size.height / 2), radius: min(bounds.size.width / 2, bounds.size.height / 2), startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
    return path.cgPath
}
```

Create a black edge rounded rectangle with black edges and light gray filling.

```swift
ShapeLayerView(shape: { (shapeLayer) in
    shapeLayer.strokeColor = UIColor.black.cgColor
    shapeLayer.fillColor = UIColor.lightGray.cgColor
    shapeLayer.lineWidth = 1.0
}) { (bounds) -> (CGPath) in
    let path = UIBezierPath(roundedRect: bounds, cornerRadius: 5)
    return path.cgPath
}
```

## Author

George Wu, stupidfive@gmail.com

## License

ShapeLayerView is available under the MIT license. See the LICENSE file for more info.
