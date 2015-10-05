Pod::Spec.new do |s|
  s.name         = "UIColor_Hex_Swift"
  s.version      = "1.2"
  s.summary      = "Convenience method for creating autoreleased color using RGBA hex string."
  s.homepage     = "https://github.com/yeahdongcn/UIColor-Hex-Swift"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "R0CKSTAR" => "yeahdongcn@gmail.com" }
  s.platform     = :ios, '8.0'
  s.source       = { :git => 'https://github.com/yeahdongcn/UIColor-Hex-Swift.git', :tag => "#{s.version}" }
  s.source_files = '**/*.swift'
  s.frameworks   = ['UIKit']
  s.requires_arc = true
end
