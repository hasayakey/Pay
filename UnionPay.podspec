Pod::Spec.new do |s|
  s.name         = "UnionPay"
  s.version      = "3.3.12"
  s.summary      = "银联SDK v3.3.12"
  s.description  = <<-DESC
                   银联SDK v3.3.12
                   DESC
  s.homepage     = "https://open.unionpay.com/upload/download/手机支付控件开发包（iOS）3.3.12.rar"
  s.license      = "MIT"
  s.author             = { "hasayakey" => "hasayakey@gmail.com" }
  s.platform     = :ios, "8.0"
  s.static_framework = true
  s.source       = { :git => "https://github.com/hasayakey/Pay.git", :tag => s.version }
  s.source_files  = "UnionPay/*.{h,m}"
  s.public_header_files = "UnionPay/*.h"
  s.frameworks = "Foundation", "UIKit", "CFNetwork", "SystemConfiguration"
  s.libraries = "z", "stdc++"
  s.requires_arc = true
  s.vendored_libraries = "UnionPay/libPaymentControl.a"
end
