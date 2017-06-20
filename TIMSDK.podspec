Pod::Spec.new do |s|
  s.name             = 'TIMSDK'
  s.version          = '3.0.2'
  s.summary          = 'QCloud SDK for iOS.'
  s.homepage         = 'https://github.com/shingwasix/TIMSDK'
  s.license          = { :type => 'Copyright', :text => 'Copyright ©2013-2017 Qcloud.com' }
  s.author           = { 'Shingwa Six' => 'http://github.com/shingwasix' }
  s.source           = { :http => 'http://dldir1.qq.com/hudongzhibo/im/IM_iOS_SDK_3.0.2.zip', :sha1 => '3810e708a300c9357d981ae229cf4afc6bf56e93' }

  s.ios.deployment_target = '7.0'
  s.frameworks = 'SystemConfiguration','CoreTelephony'
  s.libraries = 'c++','z','sqlite3', 'stdc++.6'
  s.default_subspecs = 'Base', 'Bugly'

  s.subspec 'Base' do |sp|
  	sp.vendored_frameworks = 'IM_iOS_SDK_3.0.2/libs/ImSDK.framework', 'IM_iOS_SDK_3.0.2/libs/QALSDK.framework', 'IM_iOS_SDK_3.0.2/libs/TLSSDK.framework'
  end
  
  s.subspec 'FriendshipExt' do |sp|
    sp.vendored_frameworks = 'IM_iOS_SDK_3.0.2/libs/IMFriendshipExt.framework'
    sp.dependency 'TIMSDK/Base'
  end

  s.subspec 'GroupExt' do |sp|
    sp.vendored_frameworks = 'IM_iOS_SDK_3.0.2/libs/IMGroupExt.framework'
    sp.dependency 'TIMSDK/Base'
  end

  s.subspec 'MessageExt' do |sp|
  	sp.vendored_frameworks = 'IM_iOS_SDK_3.0.2/libs/IMMessageExt.framework'
    sp.dependency 'TIMSDK/Base'
  end
  
  s.subspec 'Bugly' do |sp|
  	sp.vendored_frameworks = 'IM_iOS_SDK_3.0.2/libs/IMSDKBugly.framework'
    sp.dependency 'TIMSDK/Base'
  end

  s.subspec 'QALHttp' do |sp|
  	sp.vendored_frameworks = 'IM_iOS_SDK_3.0.2/libs/QALHttpSDK.framework'
    sp.dependency 'TIMSDK/Base'
  end
end
