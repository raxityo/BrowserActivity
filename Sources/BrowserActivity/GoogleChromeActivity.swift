//
//  GoogleChromeActivity.swift
//  The Tech Time
//
//  Created by Rakshit Majithiya on 1/11/17.
//
//

import UIKit

public class GoogleChromeActivity: BrowserActivity {
  static var isChromeInstalled: Bool {
    UIApplication.shared.canOpenURL(URL(string: "googlechrome://")!)
  }

  override var foundURL: URL? {
    didSet {
      if let nsURL = NSURL(string: foundURL?.absoluteString ?? " "),
        let googleScheme = nsURL.scheme?.replacingOccurrences(of: "http", with: "googlechrome"),
        let resourceSpecifier = nsURL.resourceSpecifier
      {
        urlToOpen = URL(string: googleScheme + ":" + resourceSpecifier)
      }
    }
  }

  override public var activityTitle: String? {
    "Open in Chrome"
  }

  override public var activityImage: UIImage? {
    UIImage(named: "icon_chrome", in: Bundle.module, compatibleWith: nil)
  }

  override public var activityType: UIActivity.ActivityType {
    UIActivity.ActivityType.openInGoogleChrome
  }
}
