//
//  UserSettings.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 11.02.2023.
//

import Foundation

final class UserSettings {
    
    private enum SettingsKeys: String {
        case cameras
        case authentication
        case username
    }
    
    static var authenticated: Bool! {
        get {
            return UserDefaults.standard.bool(forKey: SettingsKeys.authentication.rawValue)
        }
        set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.authentication.rawValue
            if let authenticated = newValue {
                defaults.set(authenticated, forKey: key)
            }
        }
    }
    
    static var username: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.username.rawValue)
        }
        set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.username.rawValue
            if let username = newValue {
                defaults.set(username, forKey: key)
            }
        }
    }
    
    static var camerasArray: [Camera]! {
        get {
            return UserDefaults.standard.array(forKey: SettingsKeys.cameras.rawValue) as? [Camera]
        }
        set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.cameras.rawValue
            if let camerasArray = newValue {
                defaults.set(camerasArray, forKey: key)
            }
        }
    }
    
}
