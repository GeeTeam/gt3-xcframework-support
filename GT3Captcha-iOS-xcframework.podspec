#
#  Be sure to run `pod spec lint GT3Captcha.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/

Pod::Spec.new do |spec|

  spec.name         = "GT3Captcha-iOS-xcframework"
  spec.version      = "0.15.9"
  spec.summary      = "极验行为验证SDK."
  spec.homepage     = "https://www.geetest.com"
  spec.license      = {:type => "MIT", :file => "LICENSE"}
  spec.author       = {"Geetest" => "xuwei@geetest.com"}
  spec.ios.deployment_target = "8.0"

  spec.source       = { :git => "https://github.com/GeeTeam/gt3-xcframework-support.git", :tag => spec.version }
  
  spec.frameworks   = 'WebKit'

  spec.vendored_frameworks = "SDK/GT3Captcha.xcframework"
  spec.resources = "SDK/GT3Captcha.bundle"

  spec.pod_target_xcconfig 	= { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  spec.user_target_xcconfig 	= { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }

end
