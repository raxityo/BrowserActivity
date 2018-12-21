//
//  FirefoxActivity.swift
//  BrowserActivity
//
//  Created by Rakshit Majithiya on 2/20/18.
//

import Foundation
//
//  GoogleChromeActivity.swift
//  The Tech Time
//
//  Created by Rakshit Majithiya on 1/11/17.
//
//

import Foundation

public class FirefoxActivity: BrowserActivity {

    static var isFirefoxInstalled: Bool {
        return UIApplication.shared.canOpenURL(URL(string: "firefox://")!)
    }

    override var foundURL: URL? {
        didSet {
            urlToOpen = URL(string: "firefox://open-url?url=\(foundURL?.absoluteString.escaped ?? "")")
        }
    }

    override public var activityTitle: String? {
        get {
            return "Open in Firefox"
        }
    }

    override public var activityImage: UIImage? {
        get {
            return UIImage(named: "icon_firefox", in: Bundle(for: classForCoder), compatibleWith: nil)
        }
    }

    override public var activityType: UIActivity.ActivityType {
        return UIActivity.ActivityType.openInFirefox
    }
}
