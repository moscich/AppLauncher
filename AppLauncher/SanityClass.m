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

- (void) registerMe:(void (^)(void))blockName {
    DDHotKey *key = [DDHotKey hotKeyWithKeyCode:kVK_ANSI_P modifierFlags:NSCommandKeyMask | NSControlKeyMask task:^(NSEvent *event) {
        blockName();
    }];
    [[DDHotKeyCenter sharedHotKeyCenter] registerHotKey:key];
}

@end
