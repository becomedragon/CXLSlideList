#
#  Be sure to run `pod spec lint CXLSlideList.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "CXLSlideList"
  s.version      = "1.0.0"
  s.summary      = "a light weight and easy to use tableview slide effect."

  s.homepage     = "https://github.com/becomedragon/CXLSlideList"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "Becomedragon Cheng" => "becomedragonlong@gmail.com" }
  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/becomedragon/CXLSlideList.git", :commit => "ffedb843465225d34a5d1a4d1096ce2601d53b16" }
  s.source_files  = 'CXLSlideList/CXLSlideList/*.{h,m}','CXLSlideList/*.{pch}'
  s.requires_arc = true

end
