//
//  AnimationSpiral.m
//  SinCos
//
//  Created by Kyosuke Takayama on 10/11/22.
//  Copyright 2010 aill. All rights reserved.
//

#import "AnimationSpiral.h"

@implementation AnimationSpiral

@synthesize radius;

- (void) process {
   double theta = M_PI / 180 * count;

   CGPoint pt;
   double x = cos(theta);
   double y = sin(theta);
   pt.x = 160 + x * radius;
   pt.y = 240 - y * radius;

   view.center = pt;
   radius++;
   if(radius > 300) radius = 0;
   if(count > 360) count = 0;
}

@end
