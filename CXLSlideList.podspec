Pod::Spec.new do |s|
  s.name        = 'CXLSlideList'
  s.version     = '1.0.0'
  s.authors     = { 'becomedragon' => 'becomedragonlong@gmail.com' }
  s.homepage    = 'https://github.com/becomedragon/CXLSlideList'
  s.summary     = 'easy to use,tableview with slide effect.'
  s.source      = { :git => 'https://github.com/becomedragon/CXLSlideList.git',
                    :tag => s.version.to_s }
  s.license     = { :type => "MIT", :file => "LICENSE" }

  s.platform = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'CXLSlideList'
  s.public_header_files = 'CXLSlideList/*.h'

  s.ios.deployment_target = '7.0'
end