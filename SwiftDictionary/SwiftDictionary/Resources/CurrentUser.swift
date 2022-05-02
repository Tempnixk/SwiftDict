//
//  CurrentUser.swift
//  SwiftDictionary
//
//  Created by Tempnixk on 2022/05/02.
//

import Foundation

class CurrentUser {
    
    static let shared = CurrentUser()
    
    private init() {}
    
    var hasSeenOnboarding: Bool {
        get {
            return UserDefaults.standard.bool(forKey: "hasSeenOnboarding")
        }
        set {
            return UserDefaults.standard.set(newValue, forKey: "hasSeenOnboarding")
        }
    }
}
