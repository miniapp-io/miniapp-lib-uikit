Pod::Spec.new do |s|
  s.name             = 'MiniAppUIKit'
  s.version          = '1.0.0'
  s.summary          = 'MiniAppUIKit is a high-performance iOS UI component library, suitable for MiniApp, Bot, and plugin scenarios.'
  s.description      = <<-DESC
    MiniAppUIKit provides a rich set of Objective-C UI components, supporting high-performance asynchronous rendering, animation, gestures, blur effects, and internationalization, suitable for various application scenarios on the iOS platform.
  DESC
  s.homepage         = 'https://github.com/miniapp-io/miniapp-lib-uikit'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'w3bili' => 'w3bili@proton.me' }
  s.ios.deployment_target = "13.0"
  s.swift_version    = '5.0'
  s.source           = { :git => 'https://github.com/miniapp-io/miniapp-lib-uikit.git', :tag => s.version.to_s }

  s.source_files = '**/*.{h,m,mm}'
  s.public_header_files = 'MiniAppUIKit.h', 'Sources/PublishHeaders/**/*.h' , 'Sources/OverlayStatusControllerImpl/**/*.h' , 'Sources/UIKitRuntimeUtils/**/*.h' , 'Sources/ObjCRuntimeUtils/**/*.h'
  
  s.xcconfig = {
     'GCC_PREPROCESSOR_DEFINITIONS' => 'MINIMAL_ASDK OMIT_BRIDGING_HEADER'
  }
  
end
