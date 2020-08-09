Pod::Spec.new do |s|
    s.name              = 'ZappPushPluginPressenger'
    s.version           = '1.0.18'
    s.summary           = 'Pressenger Zapp push plugin'
    s.homepage          = 'https://pressenger.com/pressenger-ios-sdk/'
    s.license           = { :type => 'All rights reserved.', :file => 'LICENSE' }
    s.author            = { 'Name' => 'gabor.kaposi@pressenger.com' }
    
    s.source            = { :http => 'https://maven.pressenger.com/ZappPushPluginPressenger-v1.0.17.zip' }
  
    s.platform     = :ios, '10.0'
    s.ios.deployment_target = '10.0'
    s.requires_arc = true
    s.source_files = 'ZappPushPluginPressenger/**/*.{h,m,swift}'
    s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/PressengerSDK/**',
                    'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/PressengerSDK/**',
                    'OTHER_CFLAGS'  => '-fembed-bitcode',
                    'USER_HEADER_SEARCH_PATHS' => '"$(inherited)" "${PODS_ROOT}"/Firebase/** "${PODS_ROOT}"/FirebaseMessaging/**'
                  }
  
    s.dependency 'Firebase', '~> 6.34.0'
    s.dependency 'Firebase/Messaging', '~> 6.34.0'
    s.dependency 'PressengerSDK'
    s.dependency 'ZappPushPluginsSDK'
    s.dependency 'ZappPlugins'
  end
  