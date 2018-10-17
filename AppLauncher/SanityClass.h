//
//  SanityClass.h
//  AppLauncher
//
//  Created by Marek Mościchowski on 17/10/2018.
//  Copyright © 2018 Marek Mościchowski. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SanityClass : NSObject

- (void) registerMe:(void (^)(void))blockName;

@end

NS_ASSUME_NONNULL_END
