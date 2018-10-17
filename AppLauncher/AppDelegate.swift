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
        proxy.registerMe {
            let apps = NSRunningApplication.runningApplications(withBundleIdentifier: "com.jetbrains.intellij.ce")
            apps.first?.activate(options: .activateIgnoringOtherApps)
        }
        
//        DDHotKey *key = [DDHotKey hotKeyWithKeyCode:kVK_ANSI_P modifierFlags:NSCommandKeyMask | NSControlKeyMask task:^(NSEvent *event) {
//            [self tesawft:self.statusItem.button];
//            }];
//        [[DDHotKeyCenter sharedHotKeyCenter] registerHotKey:key];
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

