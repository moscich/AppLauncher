//
//  SanityClass.m
//  AppLauncher
//
//  Created by Marek Mościchowski on 17/10/2018.
//  Copyright © 2018 Marek Mościchowski. All rights reserved.
//

#import "SanityClass.h"
#import "DDHotKeyCenter.h"
#import <Carbon/Carbon.h>

@implementation SanityClass

- (void) registerMe: (int)key block:(void (^)(void))blockName {
    DDHotKey *hotKey = [DDHotKey hotKeyWithKeyCode:key modifierFlags:NSCommandKeyMask | NSControlKeyMask | NSAlternateKeyMask | NSShiftKeyMask task:^(NSEvent *event) {
        blockName();
    }];
    [[DDHotKeyCenter sharedHotKeyCenter] registerHotKey:hotKey];
}

@end
