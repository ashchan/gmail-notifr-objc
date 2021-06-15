//
//  AppDelegate.swift
//  Mail Notifr
//
//  Created by James Chen on 2021/06/15.
//  Copyright © 2021 ashchan.com. All rights reserved.
//

import Cocoa

final class AppDelegate: NSObject, NSApplicationDelegate {
    private var statusItem: NSStatusItem!

    func applicationDidFinishLaunching(_ notification: Notification) {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        statusItem.button!.image = NSImage(named: "NoMailsTemplate")
        statusItem.button!.imagePosition = .imageLeft
        statusItem.menu = createMenu()
    }
}


// MARK: - Status Item Menu
private extension AppDelegate {
    func createMenu() -> NSMenu {
        let menu = NSMenu()

        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title: "About Mail Notifr", action: #selector(NSApp.orderFrontStandardAboutPanel(_:)), keyEquivalent: ""))
        menu.addItem(NSMenuItem(title: "Preferences...", action: #selector(showPreferences), keyEquivalent: ""))
        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title: "Quit Mail Notifr", action: #selector(NSApp.terminate(_:)), keyEquivalent: ""))

        return menu
    }

    @objc func showPreferences() {
        NSWorkspace.shared.open(URL(string: "mailnotifr://preferences")!)
    }
}

