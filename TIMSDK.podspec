Pod::Spec.new do |s|
  s.name             = 'TIMSDK'
  s.version          = '3.1.0'
  s.summary          = 'QCloud SDK for iOS.'
  s.homepage         = 'https://github.com/shingwasix/TIMSDK'
  s.license          = { :type => 'Copyright', :text => 'Copyright ©2013-2017 Qcloud.com' }
  s.author           = { 'Shingwa Six' => 'http://github.com/shingwasix' }
  s.source           = { :http => 'http://dldir1.qq.com/hudongzhibo/im/IM_iOS_SDK_3.1.0.zip', :sha1 => 'c790f9a57fe74375b6cd97e5e66f0e5ac0821748' }

  s.ios.deployment_target = '7.0'
  s.frameworks = 'SystemConfiguration','CoreTelephony'
  s.libraries = 'c++','z','sqlite3', 'stdc++.6'
  s.default_subspecs = 'Base', 'Bugly'

  s.subspec 'Base' do |sp|
  	sp.vendored_frameworks = 'IM_iOS_SDK_3.1.0/samples/sample/TIMAdapter/Framework/ImSDK.framework', 'IM_iOS_SDK_3.1.0/samples/sample/TIMAdapter/Framework/QALSDK.framework', 'IM_iOS_SDK_3.1.0/samples/sample/TIMAdapter/Framework/TLSSDK.framework'
  end
  
  s.subspec 'FriendshipExt' do |sp|
    sp.vendored_frameworks = 'IM_iOS_SDK_3.1.0/samples/sample/TIMAdapter/Framework/IMFriendshipExt.framework'
    sp.dependency 'TIMSDK/Base'
  end

  s.subspec 'GroupExt' do |sp|
    sp.vendored_frameworks = 'IM_iOS_SDK_3.1.0/samples/sample/TIMAdapter/Framework/IMGroupExt.framework'
    sp.dependency 'TIMSDK/Base'
  end

  s.subspec 'MessageExt' do |sp|
  	sp.vendored_frameworks = 'IM_iOS_SDK_3.1.0/samples/sample/TIMAdapter/Framework/IMMessageExt.framework'
    sp.dependency 'TIMSDK/Base'
  end
  
  s.subspec 'Bugly' do |sp|
  	sp.vendored_frameworks = 'IM_iOS_SDK_3.1.0/samples/sample/TIMAdapter/Framework/IMSDKBugly.framework'
    sp.dependency 'TIMSDK/Base'
  end

  s.subspec 'QALHttp' do |sp|
  	sp.vendored_frameworks = 'IM_iOS_SDK_3.1.0/samples/sample/TIMAdapter/Framework/QALHttpSDK.framework'
    sp.dependency 'TIMSDK/Base'
  end

  s.subspec 'TXRTMPSDK' do |sp|
  	sp.vendored_frameworks = 'IM_iOS_SDK_3.1.0/samples/sample/TIMAdapter/Framework/TXRTMPSDK.framework'
    sp.dependency 'TIMSDK/Base'
  end
end
