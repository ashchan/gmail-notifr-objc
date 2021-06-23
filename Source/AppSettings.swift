//
//  AppSettings.swift
//  Mail Notifr
//
//  Created by James Chen on 2021/06/18.
//  Copyright © 2021 ashchan.com. All rights reserved.
//

import Foundation

struct AppSettings {
    private init() {}
    static let shared = AppSettings()

    static let showUnreadCount = "settings.showUnreadCount"
}

extension Notification.Name {
    static let showUnreadCountSettingChanged = Notification.Name("showUnreadCountSettingChanged")
}

extension AppSettings {
    var showUnreadCount: Bool {
        get {
            UserDefaults.standard.bool(forKey: Self.showUnreadCount)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Self.showUnreadCount)
            showUnreadCountSettingChanged()
        }
    }

    func showUnreadCountSettingChanged() {
        NotificationCenter.default.post(name: .showUnreadCountSettingChanged, object: nil)
    }
}
