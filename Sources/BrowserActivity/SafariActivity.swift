//
//  SafariActivity.swift
//  The Tech Time
//
//  Created by Rakshit Majithiya on 1/11/17.
//
//

import UIKit

public class SafariActivity: BrowserActivity {
  override public var activityTitle: String? {
    "Open in Safari"
  }

  override public var activityImage: UIImage? {
    UIImage(named: "icon_safari", in: Bundle.moduleCompat, compatibleWith: nil)
  }

  override public var activityType: UIActivity.ActivityType {
    UIActivity.ActivityType.openInSafari
  }
}
