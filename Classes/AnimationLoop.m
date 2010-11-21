//
//  AnimationLoop.m
//  SinCos
//
//  Created by Kyosuke Takayama on 10/11/22.
//  Copyright 2010 aill. All rights reserved.
//

#import "AnimationLoop.h"

@implementation AnimationLoop

- (id) initWithView:(UIView *)v {
   if(self = [self init]) {
      view = [v retain];
      count = 0;
   }
   return self;
}

- (void) run {
   [self performSelectorInBackground:@selector(mainLoop) withObject:nil];
}

- (void) mainLoop {
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   while(1) {
      [self performSelectorOnMainThread:@selector(process) withObject:nil waitUntilDone:YES];
      count++;
      [NSThread sleepForTimeInterval:0.01f];
   }
   [pool release];
}

- (void) process {
}

- (void) dealloc {
   [view release];
   [super dealloc];
}

@end
