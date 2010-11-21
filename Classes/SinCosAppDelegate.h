//
//  SinCosAppDelegate.h
//  SinCos
//
//  Created by Kyosuke Takayama on 10/11/22.
//  Copyright 2010 aill. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SinCosViewController;

@interface SinCosAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SinCosViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SinCosViewController *viewController;

@end

