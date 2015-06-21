Pod::Spec.new do |s|
  s.name         = "SPLCore"
  s.version      = "1.0.0"
  s.summary      = "Splinesoft shared bits."
  s.homepage     = "http://www.splinesoft.net"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Jonathan Hersh" => "jon@her.sh" }
  s.source       = { :git => "https://github.com/splinesoft/SPLCore.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  
  s.ios.deployment_target = "7.0"
  
  s.source_files = ['SPLCore/*.{h,m}', 'Additions/*.{h,m}', 'Models/*.{h,m}']
  s.frameworks = 'UIKit', 'QuartzCore', 'AudioToolbox', 'CoreData'
    
  s.dependency 'BlocksKit', '2.2.5'
  s.dependency 'MagicalRecord', '2.3.0'

  s.dependency 'libextobjc/EXTScope', '0.4.1'
  s.dependency 'libextobjc/RuntimeExtensions', '0.4.1'
end
