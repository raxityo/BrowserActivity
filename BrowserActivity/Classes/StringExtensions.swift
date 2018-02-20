//
//  StringExtensions.swift
//  BrowserActivity
//
//  Created by Rakshit Majithiya on 2/20/18.
//

import Foundation
extension String {

    // Exetension derived from:
    // https://github.com/mozilla-mobile/firefox-ios/blob/5c80018d6ba1dca0a5ad7a674c99dee450c9b36b/Shared/Extensions/StringExtensions.swift#L8-L19

    var escaped: String? {
        // We can't guaruntee that strings have a valid string encoding, as this is an entry point for tainted data,
        // we should be very careful about forcefully dereferencing optional types.
        // https://stackoverflow.com/questions/33558933/why-is-the-return-value-of-string-addingpercentencoding-optional#33558934
        let queryItemDividers = CharacterSet(charactersIn: "?=&")
        let allowedEscapes = CharacterSet.urlQueryAllowed.symmetricDifference(queryItemDividers)
        return addingPercentEncoding(withAllowedCharacters: allowedEscapes)
    }
}
