//
//  FirefoxActivity.swift
//  BrowserActivity
//
//  Created by Rakshit Majithiya on 2/20/18.
//

import UIKit

public class FirefoxActivity: BrowserActivity {
  static var isFirefoxInstalled: Bool {
    UIApplication.shared.canOpenURL(URL(string: "firefox://")!)
  }

  override var foundURL: URL? {
    didSet {
      urlToOpen = URL(string: "firefox://open-url?url=\(foundURL?.absoluteString.escaped ?? "")")
    }
  }

  override public var activityTitle: String? {
    "Open in Firefox"
  }

  override public var activityImage: UIImage? {
    UIImage(named: "icon_firefox", in: Bundle(for: classForCoder), compatibleWith: nil)
  }

  override public var activityType: UIActivity.ActivityType {
    UIActivity.ActivityType.openInFirefox
  }
}
