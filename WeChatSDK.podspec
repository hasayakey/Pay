Pod::Spec.new do |s|
  s.name         = "WeChatSDK"
  s.version      = "1.8.4"
  s.summary      = "微信SDK v1.8.4"
  s.description  = <<-DESC
                   微信SDK v1.8.4
                   DESC
  s.homepage     = "https://res.wx.qq.com/op_res/_bwkvGV3R1XHqZeRgGTd6YHyvEZgBJdv95a2NXVRqHg5sPzhuAghRrQA9bzienfF"
  s.license      = "MIT"
  s.author             = { "hasayakey" => "hasayakey@gmail.com" }
  s.platform     = :ios, "8.0"
  s.static_framework = true
  s.source       = { :git => "https://github.com/hasayakey/Pay.git", :tag => s.version }
  s.source_files  = "WeChat/*.{h,m}"
  s.public_header_files = "WeChat/*.h"
  s.frameworks = "SystemConfiguration", "Security", "CoreTelephony", "CFNetwork", "UIKit", "CoreGraphics"
  s.libraries = "z", "sqlite3.0", "c++"
  s.requires_arc = true
  s.vendored_libraries = "WeChat/libWeChatSDK.a"
end
