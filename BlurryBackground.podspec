Pod::Spec.new do |s|
  s.name         = "BlurryBackground"
  s.version      = "1.1"
  s.summary      = "BlurryBackground."
  s.description  = <<-DESC
  						A Simple way to realize BlurryBackground
                   DESC

  s.homepage     = "https://github.com/silence0201/BlurryBackground"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Silence" => "374619540@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/silence0201/BlurryBackground.git", :tag => "1.1" }
  s.source_files  = "BlurryBackground", "BlurryBackground/*.{h,m}"
  s.public_header_files = "BlurryBackground/*.h"
  s.requires_arc = true
end
