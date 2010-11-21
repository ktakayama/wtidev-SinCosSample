//
//  AnimationLoop.h
//  SinCos
//
//  Created by Kyosuke Takayama on 10/11/22.
//  Copyright 2010 aill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnimationLoop : NSObject {
   UIView *view;
   int count;
}

- (id) initWithView:(UIView *)view;
- (void) run;

@end
