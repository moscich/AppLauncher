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
            if let app = apps.first {
                app.activate(options: .activateIgnoringOtherApps)
            } else {
                NSWorkspace.shared.launchApplication("/Applications/IntelliJ IDEA CE.app")
            }
            
//            [[NSWorkspace sharedWorkspace] launchApplication:@"/Applications/Safari.app"];
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

