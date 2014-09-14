Pod::Spec.new do |s|
  s.name         = "UIColor+uiGradients"
  s.version      = "0.1.0"
  s.summary      = "Beautiful colors from http://uigradients.com/"
  s.homepage     = "https://github.com/kaiinui/UIColor-uiGradientsAdditions"
  s.license      = "MIT"
  s.author       = { "kaiinui" => "lied.der.optik@gmail.com" }
  s.source       = { :git => "https://github.com/kaiinui/UIColor-uiGradientsAdditions.git", :tag => "v0.1.0" }
  s.source_files  = "UIG/Classes/**/*.{h,m}"
  s.requires_arc = true
  s.platform = "ios", '7.0'
end