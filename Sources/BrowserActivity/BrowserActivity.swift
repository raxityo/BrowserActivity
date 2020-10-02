//
//  BrowserActivity.swift
//  The Tech Time
//
//  Created by Rakshit Majithiya on 1/11/17.
//
//

import UIKit

public class BrowserActivity: UIActivity {
  var urlToOpen: URL?
  var foundURL: URL? {
    didSet {
      urlToOpen = foundURL
    }
  }

  var canOpen: (Any) -> Bool = { item in
    item is URL && UIApplication.shared.canOpenURL(item as! URL)
  }

  override public func canPerform(withActivityItems activityItems: [Any]) -> Bool {
    activityItems.contains(where: canOpen)
  }

  override public func prepare(withActivityItems activityItems: [Any]) {
    foundURL = activityItems.first(where: canOpen) as? URL
  }

  override public func perform() {
    guard let url = urlToOpen else {
      activityDidFinish(false)
      return
    }
    activityDidFinish(UIApplication.shared.openURL(url))
  }

  public static var compatibleActivities: [BrowserActivity] {
    var activities: [BrowserActivity] = [SafariActivity()]

    if GoogleChromeActivity.isChromeInstalled {
      activities.append(GoogleChromeActivity())
    }

    if FirefoxActivity.isFirefoxInstalled {
      activities.append(FirefoxActivity())
    }

    return activities
  }
}

public extension UIActivity.ActivityType {
  static let openInSafari = UIActivity.ActivityType(rawValue: "com.raxityo.BrowserActivity.openInSafari")
  static let openInGoogleChrome = UIActivity.ActivityType(rawValue: "com.raxityo.BrowserActivity.openInGoogleChrome")
  static let openInFirefox = UIActivity.ActivityType(rawValue: "com.raxityo.BrowserActivity.openInFirefox")
}
