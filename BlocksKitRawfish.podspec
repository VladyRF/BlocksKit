Pod::Spec.new do |s|
  s.name                  = 'BlocksKitRawfish'
  s.version               = '2.2.5'
  s.license               = 'MIT'
  s.summary               = 'The Objective-C block utilities you always wish you had.'
  s.homepage              = 'https://github.com/VladyRF/BlocksKit'
  s.author                = 'Rawfish'
  s.source                = { :git => 'https://github.com/VladyRF/BlocksKit.git', :tag => "v#{s.version}" }
  s.requires_arc          = true
  s.osx.deployment_target = '10.8'
  s.ios.deployment_target = '6.0'

  s.default_subspec = 'All'
  s.subspec 'All' do |ss|
    ss.dependency 'BlocksKitRawfish/Core'
    ss.dependency 'BlocksKitRawfish/DynamicDelegate'
    ss.ios.dependency 'BlocksKitRawfish/MessageUI'
    ss.ios.dependency 'BlocksKitRawfish/UIKit'
  end

  s.subspec 'Core' do |ss|
    ss.source_files = 'BlocksKitRawfish/BlocksKit.h', 'BlocksKitRawfish/Core/*.{h,m}'
  end

  s.subspec 'DynamicDelegate' do |ss|
    ss.source_files = 'BlocksKitRawfish/DynamicDelegate/*.{h,m}', 'BlocksKitRawfish/DynamicDelegate/Foundation/*.{h,m}'
  end

  s.subspec 'MessageUI' do |ss|
    ss.dependency 'BlocksKitRawfish/Core'
    ss.dependency 'BlocksKitRawfish/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKitRawfish/BlocksKit+MessageUI.h', 'BlocksKitRawfish/MessageUI/*.{h,m}'
    ss.ios.frameworks = 'MessageUI'
  end

  s.subspec 'UIKit' do |ss|
    ss.dependency 'BlocksKitRawfish/Core'
    ss.dependency 'BlocksKitRawfish/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKitRawfish/BlocksKit+UIKit.h', 'BlocksKitRawfish/UIKit/*.{h,m}'
  end
end
