//
//  AnimationCircle.m
//  SinCos
//
//  Created by Kyosuke Takayama on 10/11/22.
//  Copyright 2010 aill. All rights reserved.
//

#import "AnimationCircle.h"

@implementation AnimationCircle

@synthesize radius;

- (void) process {
   double theta = M_PI / 180 * count;

   CGPoint pt;
   double x = cos(theta);
   double y = sin(theta);
   pt.x = 160 + x * radius;
   pt.y = 240 + y * radius;

   view.center = pt;
   if(count > 360) count = 0;
}

@end
