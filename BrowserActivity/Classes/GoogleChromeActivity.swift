//
//  GoogleChromeActivity.swift
//  The Tech Time
//
//  Created by Rakshit Majithiya on 1/11/17.
//
//

import Foundation

public class GoogleChromeActivity: BrowserActivity {

    static var isChromeInstalled: Bool {
        return UIApplication.shared.canOpenURL(URL(string: "googlechrome://")!)
    }

    override var foundURL: URL? {
        didSet {
            if let nsURL = NSURL(string: foundURL?.absoluteString ?? " "),
                let googleScheme = nsURL.scheme?.replacingOccurrences(of: "http", with: "googlechrome"),
                let resourceSpecifier = nsURL.resourceSpecifier {
                urlToOpen = URL(string: googleScheme + ":" + resourceSpecifier)
            }
        }
    }

    override public var activityTitle: String? {
        get {
            return "Open in Chrome"
        }
    }

    override public var activityImage: UIImage? {
        get {
            return UIImage(named: "icon_chrome", in: Bundle(for: self.classForCoder), compatibleWith: nil)
        }
    }

    override public var activityType: UIActivity.ActivityType {
        return UIActivity.ActivityType.openInGoogleChrome
    }
}
