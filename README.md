# BrowserActivity

Custom `UIActivity` implementations to show "Open in Safari", "Open in Chrome" and "Open in Firefox" options in the list of activities, implemented in Swift 5.3

<img src="/screenshot/screenshot.jpeg" alt="UIActivity Screenshot" width="350"/>

## Usage:
```swift
	let sharingURL = URL(string: "https://www.google.com/search?q=swift")
	let activityViewController = UIActivityViewController(
	    activityItems: [sharingURL],
	    applicationActivities: BrowserActivity.compatibleActivities
	)
	present(activityViewController, animated: true, completion: nil)
```
#### Helper:
```
BrowserActivity.compatibleActivities
```
Returns an Array of `UIActivity` instances to open the given URL in Safari and/or Google Chrome (if Google Chrome is installed in the device).

## Example:

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation:
- Swift Package Manager:
  ```
    .package(url: "https://github.com/raxityo/BrowserActivity", from: "2.0.0"),
  ```

## Update Info.plist:

Add/append `googlechrome`, `googlechromes` and `firefox` schemes in your `Info.plist` under `LSApplicationQueriesSchemes`.

```xml
	<key>LSApplicationQueriesSchemes</key>
	<array>
		<string>firefox</string>
		<string>googlechrome</string>
		<string>googlechromes</string>
	</array>
```

## Author:

Raxit Majithiya ([@raxityo](https://twitter.com/raxityo))

## License:

BrowserActivity is available under the MIT license. See the LICENSE file for more info.
