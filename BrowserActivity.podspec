Pod::Spec.new do |s|
  s.name             = 'BrowserActivity'
  s.version          = '1.0.1'
  s.summary          = 'Custom UIActivity implementations to show "Open in Safari" and "Open in Chrome" options in the list of activities.'
  s.description      = <<-DESC
# BrowserActivity
Custom `UIActivity` implementations to show "Open in Safari" and "Open in Chrome" options in the list of activities, implemented in Swift 3.0.

## Usage:
```
  let sharingURL = URL(string: "https://www.google.com/search?q=swift")
  let activityViewController = UIActivityViewController(
      activityItems: [sharingURL],
      applicationActivities: BrowserActivity.compatibleActivities
  )
  present(activityViewController, animated: true, completion: nil)
```


Here, `BrowserActivity.compatibleActivities` returns Array of `UIActivity` instances to open the given URL in Safari and if Google Chrome is installed in the device, it includes `UIActivity` to open the given URL in Google Chrome.
                       DESC

  s.homepage         = 'https://github.com/raxityo/BrowserActivity'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Raxit Majithiya' => 'rakshit@thetechtime.com' }
  s.source           = { :git => 'https://github.com/raxityo/BrowserActivity.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/raxityo'

  s.ios.deployment_target = '8.0'
  s.screenshots     = ['https://raw.githubusercontent.com/raxityo/BrowserActivity/master/Example/screenshot.png']

  s.source_files    = 'BrowserActivity/Classes/**/*'
end
