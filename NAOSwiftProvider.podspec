Pod::Spec.new do |s|
  s.name             = 'NAOSwiftProvider'
  s.version          = '1.0.1'
  s.swift_version    = '5.0'
  s.summary          = 'NAOSwiftProvider framework allows users to easily integrate NAOSDK into the Swift applications.'


  s.description      = <<-DESC
  NAOSwiftProvider framework allows users to easily integrate the NAOSDK into the Swift application.
  It is a kind of bridge between the Swift application and the NAOSDK library that is basically written in Objective-C.
  NAOSwiftProvider exposes the callbacks and notifications that can be used to communicate with the NAOSDK.
                         DESC

  s.homepage         = 'https://github.com/bizagwira/NAOSwiftProvider'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bizagwira' => 'honore.bizagwira@polestar.eu' }
  s.source           = { :git => 'https://github.com/bizagwira/NAOSwiftProvider.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  
  s.source_files = 'Services/*.swift', 'Libraries/*.modulemap'
  
  s.xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/Libraries' }

  s.static_framework = true
  s.libraries = "c++", "z", "NAOSDK"
  s.frameworks  = "CoreBluetooth", "CoreLocation", "CoreMotion", "SystemConfiguration"
  s.requires_arc = true

  s.frameworks = 'UIKit', 'CoreGraphics'
  s.dependency 'NAOSDK'
end
