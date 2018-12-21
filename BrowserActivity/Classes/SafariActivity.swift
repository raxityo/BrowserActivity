//
//  SafariActivity.swift
//  The Tech Time
//
//  Created by Rakshit Majithiya on 1/11/17.
//
//

import Foundation

public class SafariActivity: BrowserActivity {

    override public var activityTitle: String? {
        get {
            return "Open in Safari"
        }
    }

    override public var activityImage: UIImage? {
        get {
            return UIImage(named: "icon_safari", in: Bundle(for: self.classForCoder), compatibleWith: nil)
        }
    }
    
    override public var activityType: UIActivity.ActivityType {
        return UIActivity.ActivityType.openInSafari
    }
}
