Pod::Spec.new do |s|
  s.name         = "AlipaySDK"
  s.version      = "15.6.4"
  s.summary      = "支付宝SDK v15.6.4"
  s.description  = <<-DESC
                   支付宝SDK v15.6.4
                   DESC
  s.homepage     = "https://openhome.alipay.com/doc/sdkResPackageDownLoad.resource?code=8a503930fb3847d68f50b23fda7752c3"
  s.license      = "MIT"
  s.author             = { "hasayakey" => "hasayakey@gmail.com" }
  s.platform     = :ios, "8.0"
  s.static_framework = true
  s.source       = { :git => "https://github.com/hasayakey/Pay.git", :tag => s.version }
  s.frameworks = "CoreMotion", "SystemConfiguration", "CoreTelephony"
  s.libraries = "z", "c++"
  s.requires_arc = true
  s.vendored_frameworks = "AliPay/NoUTDID/AlipaySDK.framework"
  s.resource = "AliPay/NoUTDID/AlipaySDK.bundle"
  s.prepare_command     = <<-EOF
  mkdir AlipaySDK.framework/Modules
  touch AlipaySDK.framework/Modules/module.modulemap
  cat <<-EOF > AlipaySDK.framework/Modules/module.modulemap
  framework module AlipaySDK {
    header "AlipaySDK.h"
    header "APayAuthInfo.h"
    export *
    link "z"
    link "c++"
  }
  \EOF
  EOF
end
