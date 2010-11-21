//
//  SinCosViewController.m
//  SinCos
//
//  Created by Kyosuke Takayama on 10/11/22.
//  Copyright 2010 aill. All rights reserved.
//

#import "SinCosViewController.h"
#import "AnimationCircle.h"
#import "AnimationWave.h"
#import "AnimationJump.h"

#define VIEW_SIZE    30

@implementation SinCosViewController

- (void)viewDidLoad {
   [super viewDidLoad];
   int i;

   for(i = 0; i < 3; i++) {
      AnimationCircle *circle;
      circle = [[AnimationCircle alloc] initWithView:[self createView]];
      circle.radius = (i+1) * 40;
      [circle run];
      [circle release];
   }

   for(i = 0; i < 3; i++) {
      AnimationWave *wave;
      wave = [[AnimationWave alloc] initWithView:[self createView]];
      wave.radius = (i+1) * 50;
      [wave run];
      [wave release];
   }

   for(i = 0; i < 3; i++) {
      AnimationJump *jump;
      jump = [[AnimationJump alloc] initWithView:[self createView]];
      jump.radius = (i+1) * 50;
      [jump run];
      [jump release];
   }
}

- (UIView *) createView {
   int i = random() % 2;
   int x = random() % 300;
   int y = random() % 400;
   UIView *tview = [[UIView alloc] initWithFrame:CGRectMake(x, y, VIEW_SIZE, VIEW_SIZE)];
   tview.backgroundColor = (i % 2 == 0) ? [UIColor redColor] : [UIColor blueColor];
   [self.view addSubview:tview];
   return [tview autorelease];
}

@end
