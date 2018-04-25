//
//  Localization.swift
//  Just2us
//
//  Created by Junda on 4/17/18.
//  Copyright © 2018 Just2us. All rights reserved.
//

import Foundation

/// A shorthand of NSLocalizedString without comment
/// For the edge case where non-en yet the key is missing, then the en value will be returned
public func LS(_ key: String) -> String {
    let value = NSLocalizedString(key, comment: "")
    if value != key || NSLocale.preferredLanguages.first == "en" {
        return value
    }

    // Fall back to en
    guard
        let path = Bundle.main.path(forResource: "en", ofType: "lproj"),
        let bundle = Bundle(path: path)
        else { return value }
    return NSLocalizedString(key, bundle: bundle, comment: "")
}
