//
//  AppDelegate.swift
//  AppLauncher
//
//  Created by Marek Mościchowski on 17/10/2018.
//  Copyright © 2018 Marek Mościchowski. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    let proxy = SanityClass()
    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let appData = [(kVK_ANSI_0, "com.jetbrains.intellij.ce", "/Applications/IntelliJ IDEA CE.app"),
                       (kVK_ANSI_1, "com.apple.Terminal", "/Applications/Utilities/Terminal.app"),
                       (kVK_ANSI_2, "ru.keepcoder.Telegram", "Applications/Telegram.app"),
                       (kVK_ANSI_3, "com.torusknot.SourceTreeNotMAS", "/Applications/Sourcetree.app"),
                       (kVK_ANSI_4, "com.apple.dt.Xcode", "/Applications/Xcode.app"),
                       (kVK_ANSI_5, "com.sublimetext.2", "/Applications/Sublime Text 2.app"),
                       (kVK_ANSI_6, "com.apple.Safari", "/Applications/Safari.app")]
        appData.forEach { app in
            proxy.registerMe(Int32(app.0)) {
                let apps = NSRunningApplication.runningApplications(withBundleIdentifier: app.1)
                if let app = apps.first {
                    app.activate(options: .activateIgnoringOtherApps)
                } else {
                    NSWorkspace.shared.launchApplication(app.2)
                }
            }
        }
        
    }
}
