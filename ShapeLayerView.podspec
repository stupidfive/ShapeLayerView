Pod::Spec.new do |s|
  s.name             = 'ShapeLayerView'
  s.version          = '0.1.0'
  s.summary          = 'A `CAShapeLayer` based `UIView`'
  s.description      = <<-DESC
A lightweight `UIView` that's
- Backed by a `CAShapeLayer`
- Redraw on bounds change
                       DESC

  s.homepage         = 'https://github.com/stupidfive/ShapeLayerView.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'GeorgeWu' => 'stupidfive@gmail.com' }
  s.source           = { :git => 'https://github.com/stupidfive/ShapeLayerView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ShapeLayerView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ShapeLayerView' => ['ShapeLayerView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
