Pod::Spec.new do |s|
  s.name             = 'BrowserActivity'
  s.version          = '1.3.0'
  s.summary          = 'Custom UIActivity implementations to show "Open in Safari" and "Open in Chrome" options in the list of activities.'
  s.homepage         = 'https://github.com/raxityo/BrowserActivity'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Raxit Majithiya' => 'rakshit@thetechtime.com' }
  s.source           = { :git => 'https://github.com/raxityo/BrowserActivity.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/raxityo'

  s.ios.deployment_target = '8.0'
  s.screenshots     = ['https://raw.githubusercontent.com/raxityo/BrowserActivity/master/Example/screenshot.png']

  s.source_files    = 'BrowserActivity/Classes/**/*'
  s.resources       = 'BrowserActivity/Assets.xcassets'
  s.pod_target_xcconfig =  { 'SWIFT_VERSION' => '4.0' }
end
